
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* dev_id; char const* con_id; struct clk* clk; } ;
struct clk {unsigned int module; unsigned int bits; TYPE_1__ cl; int (* disable ) (struct clk*) ;int enable; } ;


 int GFP_KERNEL ;
 int clkdev_add (TYPE_1__*) ;
 struct clk* kzalloc (int,int ) ;
 int pmu_disable (struct clk*) ;
 int pmu_enable ;

__attribute__((used)) static void clkdev_add_pmu(const char *dev, const char *con, bool deactivate,
      unsigned int module, unsigned int bits)
{
 struct clk *clk = kzalloc(sizeof(struct clk), GFP_KERNEL);

 clk->cl.dev_id = dev;
 clk->cl.con_id = con;
 clk->cl.clk = clk;
 clk->enable = pmu_enable;
 clk->disable = pmu_disable;
 clk->module = module;
 clk->bits = bits;
 if (deactivate) {




  pmu_disable(clk);
 }
 clkdev_add(&clk->cl);
}
