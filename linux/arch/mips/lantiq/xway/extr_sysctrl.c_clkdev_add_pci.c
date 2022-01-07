
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* dev_id; char* con_id; struct clk* clk; } ;
struct clk {TYPE_1__ cl; int disable; int enable; int bits; scalar_t__ module; int rates; int rate; } ;


 int CLOCK_33M ;
 int GFP_KERNEL ;
 int PMU_PCI ;
 int clkdev_add (TYPE_1__*) ;
 struct clk* kzalloc (int,int ) ;
 int pci_enable ;
 int pci_ext_disable ;
 int pci_ext_enable ;
 int pmu_disable ;
 int valid_pci_rates ;

__attribute__((used)) static void clkdev_add_pci(void)
{
 struct clk *clk = kzalloc(sizeof(struct clk), GFP_KERNEL);
 struct clk *clk_ext = kzalloc(sizeof(struct clk), GFP_KERNEL);


 clk->cl.dev_id = "17000000.pci";
 clk->cl.con_id = ((void*)0);
 clk->cl.clk = clk;
 clk->rate = CLOCK_33M;
 clk->rates = valid_pci_rates;
 clk->enable = pci_enable;
 clk->disable = pmu_disable;
 clk->module = 0;
 clk->bits = PMU_PCI;
 clkdev_add(&clk->cl);


 clk_ext->cl.dev_id = "17000000.pci";
 clk_ext->cl.con_id = "external";
 clk_ext->cl.clk = clk_ext;
 clk_ext->enable = pci_ext_enable;
 clk_ext->disable = pci_ext_disable;
 clkdev_add(&clk_ext->cl);
}
