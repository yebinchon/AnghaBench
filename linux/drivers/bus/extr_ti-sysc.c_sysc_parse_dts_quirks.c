
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int quirks; } ;
struct sysc {int dev; TYPE_1__ cfg; } ;
struct property {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {char* name; int mask; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int dev_warn (int ,char*,char const*) ;
 struct property* of_get_property (struct device_node*,char const*,int*) ;
 TYPE_2__* sysc_dts_quirks ;

__attribute__((used)) static void sysc_parse_dts_quirks(struct sysc *ddata, struct device_node *np,
      bool is_child)
{
 const struct property *prop;
 int i, len;

 for (i = 0; i < ARRAY_SIZE(sysc_dts_quirks); i++) {
  const char *name = sysc_dts_quirks[i].name;

  prop = of_get_property(np, name, &len);
  if (!prop)
   continue;

  ddata->cfg.quirks |= sysc_dts_quirks[i].mask;
  if (is_child) {
   dev_warn(ddata->dev,
     "dts flag should be at module level for %s\n",
     name);
  }
 }
}
