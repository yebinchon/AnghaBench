
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pwm_device {int dummy; } ;
struct pwm_args {int period; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {char* name; } ;
struct TYPE_7__ {struct clk_init_data* init; } ;
struct clk_pwm {int fixed_rate; TYPE_1__ hw; struct pwm_device* pwm; } ;
struct clk_init_data {char const* name; scalar_t__ num_parents; scalar_t__ flags; int * ops; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pwm_device*) ;
 int NSEC_PER_SEC ;
 int PTR_ERR (struct pwm_device*) ;
 int clk_pwm_ops ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_clk_hw_register (TYPE_2__*,TYPE_1__*) ;
 struct clk_pwm* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct pwm_device* devm_pwm_get (TYPE_2__*,int *) ;
 int of_clk_add_hw_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_hw_simple_get ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int pwm_apply_args (struct pwm_device*) ;
 int pwm_config (struct pwm_device*,int,int) ;
 int pwm_get_args (struct pwm_device*,struct pwm_args*) ;

__attribute__((used)) static int clk_pwm_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct clk_init_data init;
 struct clk_pwm *clk_pwm;
 struct pwm_device *pwm;
 struct pwm_args pargs;
 const char *clk_name;
 int ret;

 clk_pwm = devm_kzalloc(&pdev->dev, sizeof(*clk_pwm), GFP_KERNEL);
 if (!clk_pwm)
  return -ENOMEM;

 pwm = devm_pwm_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm))
  return PTR_ERR(pwm);

 pwm_get_args(pwm, &pargs);
 if (!pargs.period) {
  dev_err(&pdev->dev, "invalid PWM period\n");
  return -EINVAL;
 }

 if (of_property_read_u32(node, "clock-frequency", &clk_pwm->fixed_rate))
  clk_pwm->fixed_rate = NSEC_PER_SEC / pargs.period;

 if (pargs.period != NSEC_PER_SEC / clk_pwm->fixed_rate &&
     pargs.period != DIV_ROUND_UP(NSEC_PER_SEC, clk_pwm->fixed_rate)) {
  dev_err(&pdev->dev,
   "clock-frequency does not match PWM period\n");
  return -EINVAL;
 }





 pwm_apply_args(pwm);
 ret = pwm_config(pwm, (pargs.period + 1) >> 1, pargs.period);
 if (ret < 0)
  return ret;

 clk_name = node->name;
 of_property_read_string(node, "clock-output-names", &clk_name);

 init.name = clk_name;
 init.ops = &clk_pwm_ops;
 init.flags = 0;
 init.num_parents = 0;

 clk_pwm->pwm = pwm;
 clk_pwm->hw.init = &init;
 ret = devm_clk_hw_register(&pdev->dev, &clk_pwm->hw);
 if (ret)
  return ret;

 return of_clk_add_hw_provider(node, of_clk_hw_simple_get, &clk_pwm->hw);
}
