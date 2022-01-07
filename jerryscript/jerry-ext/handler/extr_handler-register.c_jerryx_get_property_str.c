
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int jerry_create_string_from_utf8 (int const*) ;
 int jerry_get_property (int const,int ) ;
 int jerry_release_value (int ) ;

jerry_value_t
jerryx_get_property_str (const jerry_value_t target_object,
                         const char *name)
{
  jerry_value_t prop_name = jerry_create_string_from_utf8 ((const jerry_char_t *) name);
  jerry_value_t result_val = jerry_get_property (target_object, prop_name);
  jerry_release_value (prop_name);

  return result_val;
}
