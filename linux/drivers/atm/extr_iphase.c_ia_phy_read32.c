
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iadev_priv {scalar_t__ phy; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 ia_phy_read32(struct iadev_priv *ia, unsigned int reg)
{
 return readl(ia->phy + (reg >> 2));
}
