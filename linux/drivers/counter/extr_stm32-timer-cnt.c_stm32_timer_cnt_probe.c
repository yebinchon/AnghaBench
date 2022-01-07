
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_timers {int max_arr; int clk; int regmap; } ;
struct TYPE_2__ {int num_counts; struct stm32_timer_cnt* priv; int num_signals; int signals; int * counts; int * ops; struct device* parent; int name; } ;
struct stm32_timer_cnt {TYPE_1__ counter; int ceiling; int clk; int regmap; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct stm32_timers*) ;
 struct stm32_timers* dev_get_drvdata (int ) ;
 int dev_name (struct device*) ;
 int devm_counter_register (struct device*,TYPE_1__*) ;
 struct stm32_timer_cnt* devm_kzalloc (struct device*,int,int ) ;
 int stm32_counts ;
 int stm32_signals ;
 int stm32_timer_cnt_ops ;

__attribute__((used)) static int stm32_timer_cnt_probe(struct platform_device *pdev)
{
 struct stm32_timers *ddata = dev_get_drvdata(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct stm32_timer_cnt *priv;

 if (IS_ERR_OR_NULL(ddata))
  return -EINVAL;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regmap = ddata->regmap;
 priv->clk = ddata->clk;
 priv->ceiling = ddata->max_arr;

 priv->counter.name = dev_name(dev);
 priv->counter.parent = dev;
 priv->counter.ops = &stm32_timer_cnt_ops;
 priv->counter.counts = &stm32_counts;
 priv->counter.num_counts = 1;
 priv->counter.signals = stm32_signals;
 priv->counter.num_signals = ARRAY_SIZE(stm32_signals);
 priv->counter.priv = priv;


 return devm_counter_register(dev, &priv->counter);
}
