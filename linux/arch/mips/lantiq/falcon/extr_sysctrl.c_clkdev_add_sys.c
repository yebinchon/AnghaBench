
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* dev_id; struct clk* clk; int * con_id; } ;
struct clk {unsigned int module; unsigned int bits; TYPE_1__ cl; int reboot; int disable; int enable; int deactivate; int activate; } ;


 int GFP_KERNEL ;
 int clkdev_add (TYPE_1__*) ;
 struct clk* kzalloc (int,int ) ;
 int sysctl_activate ;
 int sysctl_clkdis ;
 int sysctl_clken ;
 int sysctl_deactivate ;
 int sysctl_reboot ;

__attribute__((used)) static inline void clkdev_add_sys(const char *dev, unsigned int module,
     unsigned int bits)
{
 struct clk *clk = kzalloc(sizeof(struct clk), GFP_KERNEL);

 clk->cl.dev_id = dev;
 clk->cl.con_id = ((void*)0);
 clk->cl.clk = clk;
 clk->module = module;
 clk->bits = bits;
 clk->activate = sysctl_activate;
 clk->deactivate = sysctl_deactivate;
 clk->enable = sysctl_clken;
 clk->disable = sysctl_clkdis;
 clk->reboot = sysctl_reboot;
 clkdev_add(&clk->cl);
}
