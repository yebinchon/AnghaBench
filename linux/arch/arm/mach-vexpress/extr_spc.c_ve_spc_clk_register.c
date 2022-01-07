
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int id; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_spc {scalar_t__ cluster; TYPE_1__ hw; } ;
struct clk_init_data {scalar_t__ num_parents; int flags; int * ops; int name; } ;
struct clk {int dummy; } ;


 int CLK_GET_RATE_NOCACHE ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int clk_spc_ops ;
 int dev_name (struct device*) ;
 struct clk* devm_clk_register (struct device*,TYPE_1__*) ;
 struct clk_spc* kzalloc (int,int ) ;
 scalar_t__ topology_physical_package_id (int ) ;

__attribute__((used)) static struct clk *ve_spc_clk_register(struct device *cpu_dev)
{
 struct clk_init_data init;
 struct clk_spc *spc;

 spc = kzalloc(sizeof(*spc), GFP_KERNEL);
 if (!spc)
  return ERR_PTR(-ENOMEM);

 spc->hw.init = &init;
 spc->cluster = topology_physical_package_id(cpu_dev->id);

 spc->cluster = spc->cluster < 0 ? 0 : spc->cluster;

 init.name = dev_name(cpu_dev);
 init.ops = &clk_spc_ops;
 init.flags = CLK_GET_RATE_NOCACHE;
 init.num_parents = 0;

 return devm_clk_register(cpu_dev, &spc->hw);
}
