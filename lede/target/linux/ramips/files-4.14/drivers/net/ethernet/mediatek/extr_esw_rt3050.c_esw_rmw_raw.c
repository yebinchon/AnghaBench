
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {unsigned int base; } ;


 unsigned long __raw_readl (unsigned int) ;
 int __raw_writel (unsigned long,unsigned int) ;

__attribute__((used)) static inline void esw_rmw_raw(struct rt305x_esw *esw, unsigned reg,
          unsigned long mask, unsigned long val)
{
 unsigned long t;

 t = __raw_readl(esw->base + reg) & ~mask;
 __raw_writel(t | val, esw->base + reg);
}
