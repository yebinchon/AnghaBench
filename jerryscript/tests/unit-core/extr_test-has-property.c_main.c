
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int ) ;
 int TEST_INIT () ;
 int assert_boolean_and_release (int ,int) ;
 int jerry_cleanup () ;
 int jerry_create_boolean (int) ;
 int jerry_create_object () ;
 int jerry_create_string_from_utf8 (int *) ;
 int jerry_delete_property (int ,int ) ;
 int jerry_has_own_property (int ,int ) ;
 int jerry_has_property (int ,int ) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 int jerry_set_prototype (int ,int ) ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t object = jerry_create_object ();
  jerry_value_t prop_name = jerry_create_string_from_utf8 ((jerry_char_t *) "something");
  jerry_value_t prop_value = jerry_create_boolean (1);
  jerry_value_t proto_object = jerry_create_object ();


  assert_boolean_and_release (jerry_has_property (object, prop_name), 0);
  assert_boolean_and_release (jerry_has_own_property (object, prop_name), 0);

  assert_boolean_and_release (jerry_set_prototype (object, proto_object), 1);


  assert_boolean_and_release (jerry_has_property (object, prop_name), 0);
  assert_boolean_and_release (jerry_has_own_property (object, prop_name), 0);

  assert_boolean_and_release (jerry_set_property (proto_object, prop_name, prop_value), 1);


  assert_boolean_and_release (jerry_has_property (object, prop_name), 1);
  assert_boolean_and_release (jerry_has_own_property (object, prop_name), 0);

  TEST_ASSERT (jerry_delete_property (proto_object, prop_name));
  assert_boolean_and_release (jerry_set_property (object, prop_name, prop_value), 1);


  assert_boolean_and_release (jerry_has_property (object, prop_name), 1);
  assert_boolean_and_release (jerry_has_own_property (object, prop_name), 1);

  jerry_release_value (object);
  jerry_release_value (prop_name);
  jerry_release_value (prop_value);
  jerry_release_value (proto_object);

  jerry_cleanup ();

  return 0;
}
