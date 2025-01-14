
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_state {int dummy; } ;
typedef struct pinctrl_state pinctrl ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct pinctrl_state*) ;
 int PTR_ERR (struct pinctrl_state*) ;
 int dev_err (struct device*,char*) ;
 struct pinctrl_state* devm_pinctrl_get (struct device*) ;
 struct pinctrl_state* pinctrl_lookup_state (struct pinctrl_state*,char*) ;
 int pinctrl_select_state (struct pinctrl_state*,struct pinctrl_state*) ;

__attribute__((used)) static int gemini_setup_ide_pins(struct device *dev)
{
 struct pinctrl *p;
 struct pinctrl_state *ide_state;
 int ret;

 p = devm_pinctrl_get(dev);
 if (IS_ERR(p))
  return PTR_ERR(p);

 ide_state = pinctrl_lookup_state(p, "ide");
 if (IS_ERR(ide_state))
  return PTR_ERR(ide_state);

 ret = pinctrl_select_state(p, ide_state);
 if (ret) {
  dev_err(dev, "could not select IDE state\n");
  return ret;
 }

 return 0;
}
