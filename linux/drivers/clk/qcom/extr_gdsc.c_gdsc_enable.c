
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct gdsc {scalar_t__ pwrsts; int flags; } ;


 int AON_RESET ;
 int CLAMP_IO ;
 int GDSC_ON ;
 int HW_CTRL ;
 int PWRSTS_OFF ;
 scalar_t__ PWRSTS_ON ;
 int SW_RESET ;
 struct gdsc* domain_to_gdsc (struct generic_pm_domain*) ;
 int gdsc_assert_reset (struct gdsc*) ;
 int gdsc_assert_reset_aon (struct gdsc*) ;
 int gdsc_deassert_clamp_io (struct gdsc*) ;
 int gdsc_deassert_reset (struct gdsc*) ;
 int gdsc_force_mem_on (struct gdsc*) ;
 int gdsc_hwctrl (struct gdsc*,int) ;
 int gdsc_toggle_logic (struct gdsc*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int gdsc_enable(struct generic_pm_domain *domain)
{
 struct gdsc *sc = domain_to_gdsc(domain);
 int ret;

 if (sc->pwrsts == PWRSTS_ON)
  return gdsc_deassert_reset(sc);

 if (sc->flags & SW_RESET) {
  gdsc_assert_reset(sc);
  udelay(1);
  gdsc_deassert_reset(sc);
 }

 if (sc->flags & CLAMP_IO) {
  if (sc->flags & AON_RESET)
   gdsc_assert_reset_aon(sc);
  gdsc_deassert_clamp_io(sc);
 }

 ret = gdsc_toggle_logic(sc, GDSC_ON);
 if (ret)
  return ret;

 if (sc->pwrsts & PWRSTS_OFF)
  gdsc_force_mem_on(sc);
 udelay(1);


 if (sc->flags & HW_CTRL) {
  ret = gdsc_hwctrl(sc, 1);
  if (ret)
   return ret;
  udelay(1);
 }

 return 0;
}
