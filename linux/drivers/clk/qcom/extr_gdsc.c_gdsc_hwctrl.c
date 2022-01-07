
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gdsc {int gdscr; int regmap; } ;


 int HW_CONTROL_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int gdsc_hwctrl(struct gdsc *sc, bool en)
{
 u32 val = en ? HW_CONTROL_MASK : 0;

 return regmap_update_bits(sc->regmap, sc->gdscr, HW_CONTROL_MASK, val);
}
