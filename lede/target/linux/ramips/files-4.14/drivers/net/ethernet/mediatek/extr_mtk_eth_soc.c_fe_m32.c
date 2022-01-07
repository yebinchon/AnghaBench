
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fe_priv {int page_lock; } ;


 int __raw_readl (unsigned int) ;
 int __raw_writel (int ,unsigned int) ;
 unsigned int fe_base ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fe_m32(struct fe_priv *eth, u32 clear, u32 set, unsigned reg)
{
 u32 val;

 spin_lock(&eth->page_lock);
 val = __raw_readl(fe_base + reg);
 val &= ~clear;
 val |= set;
 __raw_writel(val, fe_base + reg);
 spin_unlock(&eth->page_lock);
}
