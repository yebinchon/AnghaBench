
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int TEST_ASSERT (int ) ;
 int jerry_create_string (int const*) ;
 int jerry_get_global_object () ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 int jerry_value_is_boolean (int ) ;

__attribute__((used)) static void
register_js_value (const char *name_p,
                   jerry_value_t value)
{
  jerry_value_t global_obj_val = jerry_get_global_object ();

  jerry_value_t name_val = jerry_create_string ((const jerry_char_t *) name_p);
  jerry_value_t result_val = jerry_set_property (global_obj_val, name_val, value);
  TEST_ASSERT (jerry_value_is_boolean (result_val));

  jerry_release_value (name_val);
  jerry_release_value (global_obj_val);

  jerry_release_value (result_val);
}
