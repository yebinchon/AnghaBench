
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_error_t ;
typedef int jerry_char_t ;


 int jerry_create_error (int ,int const*) ;
 int jerry_create_string (int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int const) ;
 int module_name_property_name ;

__attribute__((used)) static jerry_value_t
jerryx_module_create_error (jerry_error_t error_type,
                            const jerry_char_t *message,
                            const jerry_value_t module_name)
{
  jerry_value_t ret = jerry_create_error (error_type, message);

  jerry_value_t error_object = jerry_get_value_from_error (ret, 0);
  jerry_value_t property_name = jerry_create_string (module_name_property_name);

  jerry_release_value (jerry_set_property (error_object, property_name, module_name));

  jerry_release_value (property_name);
  jerry_release_value (error_object);
  return ret;
}
