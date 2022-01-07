
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int jerry_create_string_from_utf8 (int const*) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int const,int ,int const) ;

jerry_value_t
jerryx_set_property_str (const jerry_value_t target_object,
                         const char *name,
                         const jerry_value_t value)
{
  jerry_value_t property_name_val = jerry_create_string_from_utf8 ((const jerry_char_t *) name);
  jerry_value_t result_val = jerry_set_property (target_object, property_name_val, value);

  jerry_release_value (property_name_val);

  return result_val;
}
