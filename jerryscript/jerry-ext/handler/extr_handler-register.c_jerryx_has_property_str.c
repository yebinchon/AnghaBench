
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int jerry_create_string_from_utf8 (int const*) ;
 int jerry_get_boolean_value (int ) ;
 int jerry_has_property (int const,int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;

bool
jerryx_has_property_str (const jerry_value_t target_object,
                         const char *name)
{
  bool has_property = 0;

  jerry_value_t prop_name = jerry_create_string_from_utf8 ((const jerry_char_t *) name);
  jerry_value_t has_prop_val = jerry_has_property (target_object, prop_name);

  if (!jerry_value_is_error (has_prop_val))
  {
    has_property = jerry_get_boolean_value (has_prop_val);
  }

  jerry_release_value (has_prop_val);
  jerry_release_value (prop_name);

  return has_property;
}
