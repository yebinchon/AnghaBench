
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_module_resolver_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 scalar_t__ ACTUAL_NAME ;
 scalar_t__ ALIAS_NAME ;
 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 scalar_t__ TEST_VALUE ;
 int canonical_test ;
 int jerry_cleanup () ;
 int jerry_create_number (scalar_t__) ;
 int jerry_create_string (int *) ;
 scalar_t__ jerry_get_number_value (int ) ;
 int jerry_get_property (int ,int ) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 int jerryx_module_resolve (int ,int const**,int) ;

int
main (int argc, char **argv)
{
  (void) argc;
  (void) argv;

  const jerryx_module_resolver_t *resolver = &canonical_test;

  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t actual_name = jerry_create_string ((jerry_char_t *) ACTUAL_NAME);
  jerry_value_t alias_name = jerry_create_string ((jerry_char_t *) ALIAS_NAME);


  jerry_value_t result2 = jerryx_module_resolve (alias_name, &resolver, 1);
  jerry_value_t result1 = jerryx_module_resolve (actual_name, &resolver, 1);
  jerry_release_value (actual_name);
  jerry_release_value (alias_name);


  jerry_value_t prop_name = jerry_create_string ((jerry_char_t *) "something");
  jerry_value_t prop_value = jerry_create_number (TEST_VALUE);
  jerry_release_value (jerry_set_property (result1, prop_name, prop_value));
  jerry_release_value (prop_value);

  prop_value = jerry_get_property (result2, prop_name);
  TEST_ASSERT (jerry_get_number_value (prop_value) == TEST_VALUE);
  jerry_release_value (prop_value);

  jerry_release_value (prop_name);
  jerry_release_value (result1);
  jerry_release_value (result2);

  jerry_cleanup ();

  return 0;
}
