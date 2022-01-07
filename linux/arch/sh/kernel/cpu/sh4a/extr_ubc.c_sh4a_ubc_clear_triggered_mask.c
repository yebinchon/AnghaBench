
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UBC_CCMFR ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void sh4a_ubc_clear_triggered_mask(unsigned long mask)
{
 __raw_writel(__raw_readl(UBC_CCMFR) & ~mask, UBC_CCMFR);
}
