
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_nbus {struct pwm_device* pwm; int lock; } ;
struct pwm_device {int dummy; } ;
struct pwm_args {int period; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pwm_device*) ;
 int PTR_ERR (struct pwm_device*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct ts_nbus*) ;
 struct ts_nbus* devm_kzalloc (struct device*,int,int ) ;
 struct pwm_device* devm_pwm_get (struct device*,int *) ;
 int mutex_init (int *) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int pwm_apply_args (struct pwm_device*) ;
 int pwm_config (struct pwm_device*,int ,int ) ;
 int pwm_enable (struct pwm_device*) ;
 int pwm_get_args (struct pwm_device*,struct pwm_args*) ;
 int ts_nbus_init_pdata (struct platform_device*,struct ts_nbus*) ;

__attribute__((used)) static int ts_nbus_probe(struct platform_device *pdev)
{
 struct pwm_device *pwm;
 struct pwm_args pargs;
 struct device *dev = &pdev->dev;
 struct ts_nbus *ts_nbus;
 int ret;

 ts_nbus = devm_kzalloc(dev, sizeof(*ts_nbus), GFP_KERNEL);
 if (!ts_nbus)
  return -ENOMEM;

 mutex_init(&ts_nbus->lock);

 ret = ts_nbus_init_pdata(pdev, ts_nbus);
 if (ret < 0)
  return ret;

 pwm = devm_pwm_get(dev, ((void*)0));
 if (IS_ERR(pwm)) {
  ret = PTR_ERR(pwm);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "unable to request PWM\n");
  return ret;
 }

 pwm_get_args(pwm, &pargs);
 if (!pargs.period) {
  dev_err(&pdev->dev, "invalid PWM period\n");
  return -EINVAL;
 }





 pwm_apply_args(pwm);
 ret = pwm_config(pwm, pargs.period, pargs.period);
 if (ret < 0)
  return ret;




 pwm_enable(pwm);
 ts_nbus->pwm = pwm;




 dev_set_drvdata(dev, ts_nbus);

 ret = of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
 if (ret < 0)
  return ret;

 dev_info(dev, "initialized\n");

 return 0;
}
