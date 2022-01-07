
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int jerry_create_string (int const*) ;
 int jerry_get_property (int const,int ) ;
 int jerry_release_value (int ) ;

__attribute__((used)) static jerry_value_t
get_property (const jerry_value_t obj_val,
              const char *str_p)
{
  jerry_value_t prop_name_val = jerry_create_string ((const jerry_char_t *) str_p);
  jerry_value_t ret_val = jerry_get_property (obj_val, prop_name_val);
  jerry_release_value (prop_name_val);
  return ret_val;
}
