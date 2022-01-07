
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const jerry_value_t ;
typedef scalar_t__ jerry_length_t ;


 int const jerry_create_undefined () ;
 int const jerry_get_resource_name (int const) ;
 int jerry_release_value (int const) ;

jerry_value_t
jerryx_handler_resource_name (const jerry_value_t func_obj_val,
                              const jerry_value_t this_p,
                              const jerry_value_t args_p[],
                              const jerry_length_t args_cnt)
{
  (void) func_obj_val;
  (void) this_p;

  jerry_value_t undefined_value = jerry_create_undefined ();
  jerry_value_t resource_name = jerry_get_resource_name (args_cnt > 0 ? args_p[0] : undefined_value);
  jerry_release_value (undefined_value);

  return resource_name;
}
