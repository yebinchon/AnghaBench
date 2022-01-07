
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int name; } ;
struct gdsc {int flags; TYPE_1__ pd; scalar_t__ gds_hw_ctrl; int gdscr; int regmap; } ;
typedef enum gdsc_status { ____Placeholder_gdsc_status } gdsc_status ;


 int GDSC_OFF ;
 int GDSC_ON ;
 int SW_COLLAPSE_MASK ;
 int TIMEOUT_US ;
 int VOTABLE ;
 int WARN (int,char*,int ,char*) ;
 int gdsc_poll_status (struct gdsc*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int gdsc_toggle_logic(struct gdsc *sc, enum gdsc_status status)
{
 int ret;
 u32 val = (status == GDSC_ON) ? 0 : SW_COLLAPSE_MASK;

 ret = regmap_update_bits(sc->regmap, sc->gdscr, SW_COLLAPSE_MASK, val);
 if (ret)
  return ret;


 if ((sc->flags & VOTABLE) && status == GDSC_OFF) {





  udelay(TIMEOUT_US);
  return 0;
 }

 if (sc->gds_hw_ctrl) {
  udelay(1);
 }

 ret = gdsc_poll_status(sc, status);
 WARN(ret, "%s status stuck at 'o%s'", sc->pd.name, status ? "ff" : "n");
 return ret;
}
