
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_get_boolean_value (int ) ;
 int jerry_get_property (int ,int ) ;
 int jerry_has_property (int ,int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static bool
jerryx_module_check_cache (jerry_value_t cache,
                           jerry_value_t module_name,
                           jerry_value_t *result)
{
  bool ret = 0;


  jerry_value_t js_has_property = jerry_has_property (cache, module_name);


  if (!jerry_value_is_error (js_has_property))
  {
    bool has_property = jerry_get_boolean_value (js_has_property);


    if (has_property)
    {
      if (result != ((void*)0))
      {
        (*result) = jerry_get_property (cache, module_name);
      }
      ret = 1;
    }
  }

  jerry_release_value (js_has_property);

  return ret;
}
