
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx_mdio {unsigned int mdio_base; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline u32 ag71xx_mdio_rr(struct ag71xx_mdio *am, unsigned reg)
{
 return __raw_readl(am->mdio_base + reg);
}
