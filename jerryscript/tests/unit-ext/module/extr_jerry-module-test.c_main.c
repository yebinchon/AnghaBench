
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int eval_one (int ,int) ;
 int eval_string1 ;
 int eval_string2 ;
 int eval_string3 ;
 int eval_string4 ;
 int eval_string5 ;
 int eval_string6 ;
 int eval_string7 ;
 int handle_clear_require_cache ;
 int handle_require ;
 int jerry_cleanup () ;
 int jerry_create_external_function (int ) ;
 int jerry_create_string (int const*) ;
 scalar_t__ jerry_get_boolean_value (int ) ;
 int jerry_get_global_object () ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 scalar_t__ jerry_value_is_boolean (int ) ;
 int jerry_value_is_error (int ) ;
 int my_broken_module_register () ;
 int my_custom_module_register () ;

int
main (int argc, char **argv)
{
  (void) argc;
  (void) argv;
  jerry_value_t js_global = 0, js_function = 0, js_property_name = 0;
  jerry_value_t res;


  my_broken_module_register ();
  my_custom_module_register ();


  jerry_init (JERRY_INIT_EMPTY);

  js_global = jerry_get_global_object ();

  js_function = jerry_create_external_function (handle_require);
  js_property_name = jerry_create_string ((const jerry_char_t *) "require");
  res = jerry_set_property (js_global, js_property_name, js_function);
  TEST_ASSERT (!jerry_value_is_error (res));
  TEST_ASSERT (jerry_value_is_boolean (res) && jerry_get_boolean_value (res));
  jerry_release_value (res);
  jerry_release_value (js_property_name);
  jerry_release_value (js_function);

  js_function = jerry_create_external_function (handle_clear_require_cache);
  js_property_name = jerry_create_string ((const jerry_char_t *) "clear_require_cache");
  res = jerry_set_property (js_global, js_property_name, js_function);
  TEST_ASSERT (!jerry_value_is_error (res));
  TEST_ASSERT (jerry_value_is_boolean (res) && jerry_get_boolean_value (res));
  jerry_release_value (res);
  jerry_release_value (js_property_name);
  jerry_release_value (js_function);

  jerry_release_value (js_global);

  eval_one (eval_string1, 42);
  eval_one (eval_string2, 29);
  eval_one (eval_string3, 1);
  eval_one (eval_string4, 1);
  eval_one (eval_string5, 1);
  eval_one (eval_string6, 1);
  eval_one (eval_string7, 1);

  jerry_cleanup ();
}
