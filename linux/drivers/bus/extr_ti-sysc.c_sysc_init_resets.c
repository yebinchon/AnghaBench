
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int rsts; int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_reset_control_get_optional_shared (int ,char*) ;

__attribute__((used)) static int sysc_init_resets(struct sysc *ddata)
{
 ddata->rsts =
  devm_reset_control_get_optional_shared(ddata->dev, "rstctrl");
 if (IS_ERR(ddata->rsts))
  return PTR_ERR(ddata->rsts);

 return 0;
}
