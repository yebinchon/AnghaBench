
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GModule ;


 size_t TOTAL_MODULES ;
 scalar_t__ enable_panel (size_t) ;
 int ignore_panel (size_t) ;
 int* module_list ;

int
init_modules (void)
{
  GModule module;
  int i;


  for (module = 0; module < TOTAL_MODULES; ++module)
    module_list[module] = -1;

  for (i = 0, module = 0; module < TOTAL_MODULES; ++module) {
    if (!ignore_panel (module) || enable_panel (module)) {
      module_list[i++] = module;
    }
  }

  return module_list[0] > -1 ? module_list[0] : 0;
}
