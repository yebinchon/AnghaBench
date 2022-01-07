
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_readl (unsigned int) ;
 unsigned int fe_base ;

u32 fe_r32(unsigned reg)
{
 return __raw_readl(fe_base + reg);
}
