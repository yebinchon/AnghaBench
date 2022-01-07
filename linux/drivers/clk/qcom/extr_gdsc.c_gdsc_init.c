
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* power_on ) (TYPE_1__*) ;scalar_t__ power_off; int flags; } ;
struct gdsc {scalar_t__ pwrsts; int flags; TYPE_1__ pd; int gdscr; int regmap; } ;


 int ALWAYS_ON ;
 int CLK_DIS_WAIT_MASK ;
 int CLK_DIS_WAIT_VAL ;
 int EN_FEW_WAIT_MASK ;
 int EN_FEW_WAIT_VAL ;
 int EN_REST_WAIT_MASK ;
 int EN_REST_WAIT_VAL ;
 int GDSC_ON ;
 int GENPD_FLAG_ALWAYS_ON ;
 int HW_CONTROL_MASK ;
 scalar_t__ PWRSTS_ON ;
 int PWRSTS_RET ;
 int SW_OVERRIDE_MASK ;
 int VOTABLE ;
 int gdsc_check_status (struct gdsc*,int ) ;
 int gdsc_clear_mem_on (struct gdsc*) ;
 scalar_t__ gdsc_disable ;
 int gdsc_enable (TYPE_1__*) ;
 int gdsc_force_mem_on (struct gdsc*) ;
 int gdsc_toggle_logic (struct gdsc*,int ) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int gdsc_init(struct gdsc *sc)
{
 u32 mask, val;
 int on, ret;






 mask = HW_CONTROL_MASK | SW_OVERRIDE_MASK |
        EN_REST_WAIT_MASK | EN_FEW_WAIT_MASK | CLK_DIS_WAIT_MASK;
 val = EN_REST_WAIT_VAL | EN_FEW_WAIT_VAL | CLK_DIS_WAIT_VAL;
 ret = regmap_update_bits(sc->regmap, sc->gdscr, mask, val);
 if (ret)
  return ret;


 if (sc->pwrsts == PWRSTS_ON) {
  ret = gdsc_toggle_logic(sc, GDSC_ON);
  if (ret)
   return ret;
 }

 on = gdsc_check_status(sc, GDSC_ON);
 if (on < 0)
  return on;





 if ((sc->flags & VOTABLE) && on)
  gdsc_enable(&sc->pd);


 if (sc->flags & ALWAYS_ON) {
  if (!on)
   gdsc_enable(&sc->pd);
  on = 1;
  sc->pd.flags |= GENPD_FLAG_ALWAYS_ON;
 }

 if (on || (sc->pwrsts & PWRSTS_RET))
  gdsc_force_mem_on(sc);
 else
  gdsc_clear_mem_on(sc);

 if (!sc->pd.power_off)
  sc->pd.power_off = gdsc_disable;
 if (!sc->pd.power_on)
  sc->pd.power_on = gdsc_enable;
 pm_genpd_init(&sc->pd, ((void*)0), !on);

 return 0;
}
