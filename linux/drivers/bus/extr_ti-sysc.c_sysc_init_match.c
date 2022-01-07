
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysc_capabilities {int mod_quirks; } ;
struct TYPE_2__ {int quirks; } ;
struct sysc {struct sysc_capabilities const* cap; TYPE_1__ cfg; int dev; } ;


 int EINVAL ;
 struct sysc_capabilities* of_device_get_match_data (int ) ;

__attribute__((used)) static int sysc_init_match(struct sysc *ddata)
{
 const struct sysc_capabilities *cap;

 cap = of_device_get_match_data(ddata->dev);
 if (!cap)
  return -EINVAL;

 ddata->cap = cap;
 if (ddata->cap)
  ddata->cfg.quirks |= ddata->cap->mod_quirks;

 return 0;
}
