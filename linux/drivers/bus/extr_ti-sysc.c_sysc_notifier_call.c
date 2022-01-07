
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int dummy; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;



 int NOTIFY_DONE ;
 int sysc_child_add_clocks (struct sysc*,struct device*) ;
 struct sysc* sysc_child_to_parent (struct device*) ;
 int sysc_legacy_idle_quirk (struct sysc*,struct device*) ;

__attribute__((used)) static int sysc_notifier_call(struct notifier_block *nb,
         unsigned long event, void *device)
{
 struct device *dev = device;
 struct sysc *ddata;
 int error;

 ddata = sysc_child_to_parent(dev);
 if (!ddata)
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  error = sysc_child_add_clocks(ddata, dev);
  if (error)
   return error;
  sysc_legacy_idle_quirk(ddata, dev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
