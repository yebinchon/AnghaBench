
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {char const* con_id; struct clk* clk; int dev_id; } ;
struct clk {unsigned int bits; TYPE_1__ cl; int disable; int enable; } ;


 int GFP_KERNEL ;
 int clkdev_add (TYPE_1__*) ;
 int dev_name (struct device*) ;
 int gptu_disable ;
 int gptu_enable ;
 struct clk* kzalloc (int,int ) ;

__attribute__((used)) static inline void clkdev_add_gptu(struct device *dev, const char *con,
       unsigned int timer)
{
 struct clk *clk = kzalloc(sizeof(struct clk), GFP_KERNEL);

 clk->cl.dev_id = dev_name(dev);
 clk->cl.con_id = con;
 clk->cl.clk = clk;
 clk->enable = gptu_enable;
 clk->disable = gptu_disable;
 clk->bits = timer;
 clkdev_add(&clk->cl);
}
