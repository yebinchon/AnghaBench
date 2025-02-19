
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jerryx_module_resolver_t ;
typedef int jerry_value_t ;
struct TYPE_3__ {int (* init_cb ) (void*) ;int (* deinit_cb ) (void*) ;} ;


 void* jerry_get_context_data (TYPE_1__*) ;
 scalar_t__ jerry_value_is_undefined (int const) ;
 TYPE_1__ jerryx_module_manager ;
 int jerryx_module_resolve_local (int const,int const**,size_t,int *) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

void
jerryx_module_clear_cache (const jerry_value_t name,
                           const jerryx_module_resolver_t **resolvers_p,
                           size_t resolver_count)
{
  void *instances_p = jerry_get_context_data (&jerryx_module_manager);

  if (jerry_value_is_undefined (name))
  {

    jerryx_module_manager.deinit_cb (instances_p);
    jerryx_module_manager.init_cb (instances_p);
    return;
  }


  jerryx_module_resolve_local (name, resolvers_p, resolver_count, ((void*)0));
}
