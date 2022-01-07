
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_panel_idx; int * enable_panels; } ;
typedef unsigned int GModule ;


 TYPE_1__ conf ;
 int get_module_enum (int ) ;

int
enable_panel (GModule mod)
{
  int i, module;

  for (i = 0; i < conf.enable_panel_idx; ++i) {
    if ((module = get_module_enum (conf.enable_panels[i])) == -1)
      continue;
    if (mod == (unsigned int) module) {
      return 1;
    }
  }

  return 0;
}
