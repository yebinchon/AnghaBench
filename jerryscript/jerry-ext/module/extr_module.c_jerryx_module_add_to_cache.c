
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 scalar_t__ jerry_value_is_error (int ) ;

__attribute__((used)) static jerry_value_t
jerryx_module_add_to_cache (jerry_value_t cache,
                            jerry_value_t module_name,
                            jerry_value_t module)
{
  jerry_value_t ret = jerry_set_property (cache, module_name, module);

  if (jerry_value_is_error (ret))
  {
    jerry_release_value (module);
  }
  else
  {
    jerry_release_value (ret);
    ret = module;
  }

  return ret;
}
