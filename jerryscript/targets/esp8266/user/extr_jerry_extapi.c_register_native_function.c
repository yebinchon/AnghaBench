
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_external_handler_t ;
typedef int jerry_char_t ;


 int jerry_create_external_function (int ) ;
 int jerry_create_string (int const*) ;
 int jerry_get_global_object () ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 scalar_t__ jerry_value_is_constructor (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 scalar_t__ jerry_value_is_function (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static bool
register_native_function (const char* name,
                          jerry_external_handler_t handler)
{
  jerry_value_t global_obj_val = jerry_get_global_object ();
  jerry_value_t reg_func_val = jerry_create_external_function (handler);
  bool bok = 1;

  if (!(jerry_value_is_function (reg_func_val)
        && jerry_value_is_constructor (reg_func_val)))
  {
    printf ("!!! create_external_function failed !!!\r\n");
    jerry_release_value (reg_func_val);
    jerry_release_value (global_obj_val);
    return 0;
  }

  jerry_value_t prop_name_val = jerry_create_string ((const jerry_char_t *) name);
  jerry_value_t res = jerry_set_property (global_obj_val, prop_name_val, reg_func_val);

  jerry_release_value (reg_func_val);
  jerry_release_value (global_obj_val);
  jerry_release_value (prop_name_val);

  if (jerry_value_is_error (res))
  {
    printf ("!!! register_native_function failed: [%s]\r\n", name);
    jerry_release_value (res);
    return 0;
  }

  jerry_release_value (res);

  return 1;
}
