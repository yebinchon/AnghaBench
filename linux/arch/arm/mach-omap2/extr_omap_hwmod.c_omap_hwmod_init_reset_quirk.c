
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sysc_module_data {int name; } ;
struct omap_hwmod_reset {int reset; int len; int match; } ;
struct omap_hwmod {TYPE_1__* class; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int reset; } ;


 int strncmp (int ,int ,int ) ;

__attribute__((used)) static void
omap_hwmod_init_reset_quirk(struct device *dev, struct omap_hwmod *oh,
       const struct ti_sysc_module_data *data,
       const struct omap_hwmod_reset *quirks,
       int quirks_sz)
{
 const struct omap_hwmod_reset *quirk;
 int i;

 for (i = 0; i < quirks_sz; i++) {
  quirk = &quirks[i];
  if (!strncmp(data->name, quirk->match, quirk->len)) {
   oh->class->reset = quirk->reset;

   return;
  }
 }
}
