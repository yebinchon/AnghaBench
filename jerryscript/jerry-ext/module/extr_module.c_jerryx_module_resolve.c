
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_module_resolver_t ;
typedef int jerry_value_t ;


 int jerryx_module_resolve_local (int const,int const**,size_t,int *) ;

jerry_value_t
jerryx_module_resolve (const jerry_value_t name,
                       const jerryx_module_resolver_t **resolvers_p,
                       size_t resolver_count)
{

  jerry_value_t ret = 0;
  jerryx_module_resolve_local (name, resolvers_p, resolver_count, &ret);
  return ret;
}
