
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* dev_id; char const* con_id; struct clk* clk; } ;
struct clk {unsigned int bits; TYPE_1__ cl; int disable; int enable; } ;


 int GFP_KERNEL ;
 int cgu_disable ;
 int cgu_enable ;
 int clkdev_add (TYPE_1__*) ;
 struct clk* kzalloc (int,int ) ;

__attribute__((used)) static void clkdev_add_cgu(const char *dev, const char *con,
     unsigned int bits)
{
 struct clk *clk = kzalloc(sizeof(struct clk), GFP_KERNEL);

 clk->cl.dev_id = dev;
 clk->cl.con_id = con;
 clk->cl.clk = clk;
 clk->enable = cgu_enable;
 clk->disable = cgu_disable;
 clk->bits = bits;
 clkdev_add(&clk->cl);
}
