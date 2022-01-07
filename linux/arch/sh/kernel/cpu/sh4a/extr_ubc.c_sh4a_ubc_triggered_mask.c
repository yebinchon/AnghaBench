
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UBC_CCMFR ;
 unsigned long __raw_readl (int ) ;

__attribute__((used)) static unsigned long sh4a_ubc_triggered_mask(void)
{
 return __raw_readl(UBC_CCMFR);
}
