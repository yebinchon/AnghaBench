
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ag71xx {int speed; int pllregmap; scalar_t__* plldata; scalar_t__* pllreg; } ;


 int BUG () ;



 int regmap_write (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ath79_set_pllval(struct ag71xx *ag)
{
 u32 pll_reg = ag->pllreg[1];
 u32 pll_val;

 if (!ag->pllregmap)
  return;

 switch (ag->speed) {
 case 130:
  pll_val = ag->plldata[2];
  break;
 case 129:
  pll_val = ag->plldata[1];
  break;
 case 128:
  pll_val = ag->plldata[0];
  break;
 default:
  BUG();
 }

 if (pll_val)
  regmap_write(ag->pllregmap, pll_reg, pll_val);
}
