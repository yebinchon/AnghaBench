
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int S5P_EINT_WAKEUP_MASK ;
 int __raw_readl (int ) ;

__attribute__((used)) static u32 s5pv210_read_eint_wakeup_mask(void)
{
 return __raw_readl(S5P_EINT_WAKEUP_MASK);
}
