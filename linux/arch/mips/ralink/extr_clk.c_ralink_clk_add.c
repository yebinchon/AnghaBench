
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* dev_id; struct clk* clk; } ;
struct clk {unsigned long rate; TYPE_1__ cl; } ;


 int GFP_KERNEL ;
 int clkdev_add (TYPE_1__*) ;
 struct clk* kzalloc (int,int ) ;
 int panic (char*) ;

void ralink_clk_add(const char *dev, unsigned long rate)
{
 struct clk *clk = kzalloc(sizeof(struct clk), GFP_KERNEL);

 if (!clk)
  panic("failed to add clock");

 clk->cl.dev_id = dev;
 clk->cl.clk = clk;

 clk->rate = rate;

 clkdev_add(&clk->cl);
}
