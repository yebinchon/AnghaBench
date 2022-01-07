
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int boot_cfg; unsigned int nr_channels; TYPE_1__* channels; } ;
struct TYPE_3__ {int boot_cfg; } ;


 int HPET_CFG ;
 int HPET_CFG_ENABLE ;
 int HPET_Tn_CFG (unsigned int) ;
 TYPE_2__ hpet_base ;
 int hpet_virt_address ;
 int hpet_writel (int,int ) ;
 int is_hpet_capable () ;

void hpet_disable(void)
{
 unsigned int i;
 u32 cfg;

 if (!is_hpet_capable() || !hpet_virt_address)
  return;


 cfg = hpet_base.boot_cfg;
 cfg &= ~HPET_CFG_ENABLE;
 hpet_writel(cfg, HPET_CFG);


 for (i = 0; i < hpet_base.nr_channels; i++)
  hpet_writel(hpet_base.channels[i].boot_cfg, HPET_Tn_CFG(i));


 if (hpet_base.boot_cfg & HPET_CFG_ENABLE)
  hpet_writel(hpet_base.boot_cfg, HPET_CFG);
}
