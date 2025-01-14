
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_control_ops {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {unsigned int nr_resets; struct device_node* of_node; struct reset_control_ops const* ops; int owner; } ;
struct mtk_reset {int regofs; TYPE_1__ rcdev; struct regmap* regmap; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int THIS_MODULE ;
 int kfree (struct mtk_reset*) ;
 struct mtk_reset* kzalloc (int,int ) ;
 int pr_err (char*,int,...) ;
 int reset_controller_register (TYPE_1__*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static void mtk_register_reset_controller_common(struct device_node *np,
   unsigned int num_regs, int regofs,
   const struct reset_control_ops *reset_ops)
{
 struct mtk_reset *data;
 int ret;
 struct regmap *regmap;

 regmap = syscon_node_to_regmap(np);
 if (IS_ERR(regmap)) {
  pr_err("Cannot find regmap for %pOF: %ld\n", np,
    PTR_ERR(regmap));
  return;
 }

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return;

 data->regmap = regmap;
 data->regofs = regofs;
 data->rcdev.owner = THIS_MODULE;
 data->rcdev.nr_resets = num_regs * 32;
 data->rcdev.ops = reset_ops;
 data->rcdev.of_node = np;

 ret = reset_controller_register(&data->rcdev);
 if (ret) {
  pr_err("could not register reset controller: %d\n", ret);
  kfree(data);
  return;
 }
}
