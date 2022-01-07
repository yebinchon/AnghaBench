
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* dev_id; char* con_id; struct clk* clk; } ;
struct clk {int module; TYPE_1__ cl; int enable; int rates; scalar_t__ rate; } ;


 int GFP_KERNEL ;
 int clkdev_add (TYPE_1__*) ;
 int clkout_enable ;
 void* kzalloc (int,int ) ;
 int sprintf (char*,char*,int) ;
 int * valid_clkout_rates ;

__attribute__((used)) static void clkdev_add_clkout(void)
{
 int i;

 for (i = 0; i < 4; i++) {
  struct clk *clk;
  char *name;

  name = kzalloc(sizeof("clkout0"), GFP_KERNEL);
  sprintf(name, "clkout%d", i);

  clk = kzalloc(sizeof(struct clk), GFP_KERNEL);
  clk->cl.dev_id = "1f103000.cgu";
  clk->cl.con_id = name;
  clk->cl.clk = clk;
  clk->rate = 0;
  clk->rates = valid_clkout_rates[i];
  clk->enable = clkout_enable;
  clk->module = i;
  clkdev_add(&clk->cl);
 }
}
