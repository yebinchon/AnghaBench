
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iadev_priv {scalar_t__ phy; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ia_phy_write32(struct iadev_priv *ia, unsigned int reg, u32 val)
{
 writel(val, ia->phy + (reg >> 2));
}
