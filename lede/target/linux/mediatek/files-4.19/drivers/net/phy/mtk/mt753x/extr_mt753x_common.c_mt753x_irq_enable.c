
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mii_read ) (struct gsw_mt753x*,int,int ) ;int phy_link_sts; } ;


 int BIT (int) ;
 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int MT753X_NUM_PHYS ;
 int SYS_INT_EN ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int stub1 (struct gsw_mt753x*,int,int ) ;

void mt753x_irq_enable(struct gsw_mt753x *gsw)
{
 u32 val;
 int i;


 for (i = 0; i < MT753X_NUM_PHYS; i++) {
  val = gsw->mii_read(gsw, i, MII_BMSR);
  if (val & BMSR_LSTATUS)
   gsw->phy_link_sts |= BIT(i);
 }

 val = BIT(MT753X_NUM_PHYS) - 1;

 mt753x_reg_write(gsw, SYS_INT_EN, val);
}
