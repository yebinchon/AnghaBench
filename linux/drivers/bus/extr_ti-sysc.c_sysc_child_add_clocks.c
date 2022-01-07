
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int nr_clocks; int * clock_roles; int dev; } ;
struct device {int dummy; } ;


 int EEXIST ;
 int dev_err (int ,char*,int ,int) ;
 int sysc_child_add_named_clock (struct sysc*,struct device*,int ) ;

__attribute__((used)) static int sysc_child_add_clocks(struct sysc *ddata,
     struct device *child)
{
 int i, error;

 for (i = 0; i < ddata->nr_clocks; i++) {
  error = sysc_child_add_named_clock(ddata,
         child,
         ddata->clock_roles[i]);
  if (error && error != -EEXIST) {
   dev_err(ddata->dev, "could not add child clock %s: %i\n",
    ddata->clock_roles[i], error);

   return error;
  }
 }

 return 0;
}
