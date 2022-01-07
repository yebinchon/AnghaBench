
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct gdsc {scalar_t__ pwrsts; int flags; } ;


 int CLAMP_IO ;
 int GDSC_OFF ;
 int GDSC_ON ;
 int HW_CTRL ;
 int PWRSTS_OFF ;
 scalar_t__ PWRSTS_ON ;
 struct gdsc* domain_to_gdsc (struct generic_pm_domain*) ;
 int gdsc_assert_clamp_io (struct gdsc*) ;
 int gdsc_assert_reset (struct gdsc*) ;
 int gdsc_clear_mem_on (struct gdsc*) ;
 int gdsc_hwctrl (struct gdsc*,int) ;
 int gdsc_poll_status (struct gdsc*,int ) ;
 int gdsc_toggle_logic (struct gdsc*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int gdsc_disable(struct generic_pm_domain *domain)
{
 struct gdsc *sc = domain_to_gdsc(domain);
 int ret;

 if (sc->pwrsts == PWRSTS_ON)
  return gdsc_assert_reset(sc);


 if (sc->flags & HW_CTRL) {
  ret = gdsc_hwctrl(sc, 0);
  if (ret < 0)
   return ret;






  udelay(1);

  ret = gdsc_poll_status(sc, GDSC_ON);
  if (ret)
   return ret;
 }

 if (sc->pwrsts & PWRSTS_OFF)
  gdsc_clear_mem_on(sc);

 ret = gdsc_toggle_logic(sc, GDSC_OFF);
 if (ret)
  return ret;

 if (sc->flags & CLAMP_IO)
  gdsc_assert_clamp_io(sc);

 return 0;
}
