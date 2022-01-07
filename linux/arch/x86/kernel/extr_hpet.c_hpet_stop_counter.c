
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HPET_CFG ;
 int HPET_CFG_ENABLE ;
 int hpet_readl (int ) ;
 int hpet_writel (int ,int ) ;

__attribute__((used)) static void hpet_stop_counter(void)
{
 u32 cfg = hpet_readl(HPET_CFG);

 cfg &= ~HPET_CFG_ENABLE;
 hpet_writel(cfg, HPET_CFG);
}
