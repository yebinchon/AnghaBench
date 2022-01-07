
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPET_CFG ;
 unsigned int HPET_CFG_LEGACY ;
 int hpet_legacy_int_enabled ;
 unsigned int hpet_readl (int ) ;
 int hpet_writel (unsigned int,int ) ;

__attribute__((used)) static void hpet_enable_legacy_int(void)
{
 unsigned int cfg = hpet_readl(HPET_CFG);

 cfg |= HPET_CFG_LEGACY;
 hpet_writel(cfg, HPET_CFG);
 hpet_legacy_int_enabled = 1;
}
