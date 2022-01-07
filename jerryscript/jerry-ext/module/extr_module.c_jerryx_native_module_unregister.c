
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_p; } ;
typedef TYPE_1__ jerryx_native_module_t ;


 TYPE_1__* first_module_p ;

void jerryx_native_module_unregister (jerryx_native_module_t *module_p)
{
  jerryx_native_module_t *parent_p = ((void*)0), *iter_p = ((void*)0);

  for (iter_p = first_module_p; iter_p != ((void*)0); parent_p = iter_p, iter_p = iter_p->next_p)
  {
    if (iter_p == module_p)
    {
      if (parent_p)
      {
        parent_p->next_p = module_p->next_p;
      }
      else
      {
        first_module_p = module_p->next_p;
      }
      module_p->next_p = ((void*)0);
    }
  }
}
