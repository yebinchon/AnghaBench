
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct clk_init_data* init; } ;
struct scpi_clk {TYPE_2__ hw; int id; TYPE_1__* scpi_ops; int info; } ;
struct of_device_id {int * data; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; int * ops; scalar_t__ num_parents; scalar_t__ flags; } ;
struct TYPE_4__ {scalar_t__ (* clk_get_range ) (int ,unsigned long*,unsigned long*) ;int (* dvfs_get_info ) (int ) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_hw_set_rate_range (TYPE_2__*,unsigned long,unsigned long) ;
 int devm_clk_hw_register (struct device*,TYPE_2__*) ;
 TYPE_1__* get_scpi_ops () ;
 int scpi_clk_ops ;
 int scpi_dvfs_ops ;
 int stub1 (int ) ;
 scalar_t__ stub2 (int ,unsigned long*,unsigned long*) ;

__attribute__((used)) static int
scpi_clk_ops_init(struct device *dev, const struct of_device_id *match,
    struct scpi_clk *sclk, const char *name)
{
 struct clk_init_data init;
 unsigned long min = 0, max = 0;
 int ret;

 init.name = name;
 init.flags = 0;
 init.num_parents = 0;
 init.ops = match->data;
 sclk->hw.init = &init;
 sclk->scpi_ops = get_scpi_ops();

 if (init.ops == &scpi_dvfs_ops) {
  sclk->info = sclk->scpi_ops->dvfs_get_info(sclk->id);
  if (IS_ERR(sclk->info))
   return PTR_ERR(sclk->info);
 } else if (init.ops == &scpi_clk_ops) {
  if (sclk->scpi_ops->clk_get_range(sclk->id, &min, &max) || !max)
   return -EINVAL;
 } else {
  return -EINVAL;
 }

 ret = devm_clk_hw_register(dev, &sclk->hw);
 if (!ret && max)
  clk_hw_set_rate_range(&sclk->hw, min, max);
 return ret;
}
