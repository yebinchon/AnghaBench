
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* pins; scalar_t__ of_node_reused; } ;
struct TYPE_3__ {void* p; void* idle_state; void* sleep_state; void* init_state; void* default_state; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PINCTRL_STATE_DEFAULT ;
 int PINCTRL_STATE_IDLE ;
 int PINCTRL_STATE_INIT ;
 int PINCTRL_STATE_SLEEP ;
 int PTR_ERR (void*) ;
 int dev_dbg (struct device*,char*) ;
 int devm_kfree (struct device*,TYPE_1__*) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;
 void* devm_pinctrl_get (struct device*) ;
 int devm_pinctrl_put (void*) ;
 void* pinctrl_lookup_state (void*,int ) ;
 int pinctrl_select_state (void*,void*) ;

int pinctrl_bind_pins(struct device *dev)
{
 int ret;

 if (dev->of_node_reused)
  return 0;

 dev->pins = devm_kzalloc(dev, sizeof(*(dev->pins)), GFP_KERNEL);
 if (!dev->pins)
  return -ENOMEM;

 dev->pins->p = devm_pinctrl_get(dev);
 if (IS_ERR(dev->pins->p)) {
  dev_dbg(dev, "no pinctrl handle\n");
  ret = PTR_ERR(dev->pins->p);
  goto cleanup_alloc;
 }

 dev->pins->default_state = pinctrl_lookup_state(dev->pins->p,
     PINCTRL_STATE_DEFAULT);
 if (IS_ERR(dev->pins->default_state)) {
  dev_dbg(dev, "no default pinctrl state\n");
  ret = 0;
  goto cleanup_get;
 }

 dev->pins->init_state = pinctrl_lookup_state(dev->pins->p,
     PINCTRL_STATE_INIT);
 if (IS_ERR(dev->pins->init_state)) {

  dev_dbg(dev, "no init pinctrl state\n");

  ret = pinctrl_select_state(dev->pins->p,
        dev->pins->default_state);
 } else {
  ret = pinctrl_select_state(dev->pins->p, dev->pins->init_state);
 }

 if (ret) {
  dev_dbg(dev, "failed to activate initial pinctrl state\n");
  goto cleanup_get;
 }
 return 0;






cleanup_get:
 devm_pinctrl_put(dev->pins->p);
cleanup_alloc:
 devm_kfree(dev, dev->pins);
 dev->pins = ((void*)0);


 if (ret == -EPROBE_DEFER)
  return ret;

 if (ret == -EINVAL)
  return ret;


 return 0;
}
