
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

jerry_value_t
jerryx_handler_register_global (const jerry_char_t *name_p,
                                jerry_external_handler_t handler_p)
{
  jerry_value_t global_obj_val = jerry_get_global_object ();
  jerry_value_t function_name_val = jerry_create_string (name_p);
  jerry_value_t function_val = jerry_create_external_function (handler_p);

  jerry_value_t result_val = jerry_set_property (global_obj_val, function_name_val, function_val);

  jerry_release_value (function_val);
  jerry_release_value (function_name_val);
  jerry_release_value (global_obj_val);

  return result_val;
}
