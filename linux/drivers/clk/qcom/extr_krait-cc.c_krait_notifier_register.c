
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct krait_mux_clk {TYPE_1__ clk_nb; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int clk_notifier_register (struct clk*,TYPE_1__*) ;
 int dev_err (struct device*,char*,int) ;
 int krait_notifier_cb ;

__attribute__((used)) static int krait_notifier_register(struct device *dev, struct clk *clk,
       struct krait_mux_clk *mux)
{
 int ret = 0;

 mux->clk_nb.notifier_call = krait_notifier_cb;
 ret = clk_notifier_register(clk, &mux->clk_nb);
 if (ret)
  dev_err(dev, "failed to register clock notifier: %d\n", ret);

 return ret;
}
