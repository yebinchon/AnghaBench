
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iadev_priv {int dummy; } ;
struct ia_reg {int val; int reg; } ;


 int ia_phy_write32 (struct iadev_priv*,int ,int ) ;

__attribute__((used)) static void ia_phy_write(struct iadev_priv *iadev,
    const struct ia_reg *regs, int len)
{
 while (len--) {
  ia_phy_write32(iadev, regs->reg, regs->val);
  regs++;
 }
}
