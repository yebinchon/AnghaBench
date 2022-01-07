
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_4__ {int registered; int result; } ;
typedef TYPE_1__ jerryx_register_result ;
typedef int jerryx_property_entry ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRYX_PROPERTY_BOOLEAN (char*,int) ;
 int JERRYX_PROPERTY_FUNCTION (char*,int ) ;
 int JERRYX_PROPERTY_LIST_END () ;
 int JERRYX_PROPERTY_NUMBER (char*,double) ;
 int JERRYX_PROPERTY_STRING (char*,char*) ;
 int JERRYX_PROPERTY_STRING_SZ (char*,char*,int) ;
 int JERRYX_PROPERTY_UNDEFINED (char*) ;
 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int jerry_cleanup () ;
 int jerry_create_object () ;
 int jerry_eval (int const*,int ,int ) ;
 int jerry_get_boolean_value (int ) ;
 int jerry_get_global_object () ;
 double jerry_get_number_value (int ) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_boolean (int ) ;
 int jerry_value_is_number (int ) ;
 int jerry_value_is_undefined (int ) ;
 int jerryx_release_property_entry (int *,TYPE_1__) ;
 TYPE_1__ jerryx_set_properties (int ,int *) ;
 int jerryx_set_property_str (int ,char*,int ) ;
 int method_hello ;
 int strlen (char const*) ;

__attribute__((used)) static void
test_simple_registration (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t target_object = jerry_create_object ();


  jerryx_property_entry methods[] =
  {
    JERRYX_PROPERTY_FUNCTION ("hello", method_hello),
    JERRYX_PROPERTY_NUMBER ("my_number", 42.5),
    JERRYX_PROPERTY_STRING ("my_str", "super_str"),
    JERRYX_PROPERTY_STRING_SZ ("my_str_sz", "super_str", 6),
    JERRYX_PROPERTY_BOOLEAN ("my_bool", 1),
    JERRYX_PROPERTY_BOOLEAN ("my_bool_false", 0),
    JERRYX_PROPERTY_UNDEFINED ("my_non_value"),
    JERRYX_PROPERTY_LIST_END (),
  };

  jerryx_register_result register_result = jerryx_set_properties (target_object, methods);

  TEST_ASSERT (register_result.registered == 7);
  TEST_ASSERT (jerry_value_is_undefined (register_result.result));

  jerryx_release_property_entry (methods, register_result);
  jerry_release_value (register_result.result);

  jerry_value_t global_obj = jerry_get_global_object ();
  jerryx_set_property_str (global_obj, "test", target_object);
  jerry_release_value (target_object);
  jerry_release_value (global_obj);

  {
    const char *test_A = "test.my_number";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_number (result));
    TEST_ASSERT (jerry_get_number_value (result) == 42.5);
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.my_str_sz === 'super_'";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_boolean (result));
    TEST_ASSERT (jerry_get_boolean_value (result) == 1);
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.my_str === 'super_str'";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_boolean (result));
    TEST_ASSERT (jerry_get_boolean_value (result) == 1);
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.my_bool";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_boolean (result));
    TEST_ASSERT (jerry_get_boolean_value (result) == 1);
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.my_bool_false";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_boolean (result));
    TEST_ASSERT (jerry_get_boolean_value (result) == 0);
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.my_non_value";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_undefined (result));
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.hello(33, 42, 2);";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_number (result));
    TEST_ASSERT ((uint32_t) jerry_get_number_value (result) == 3u);
    jerry_release_value (result);
  }

  {
    const char *test_A = "test.hello();";
    jerry_value_t result = jerry_eval ((const jerry_char_t *) test_A, strlen (test_A), 0);
    TEST_ASSERT (jerry_value_is_number (result));
    TEST_ASSERT ((uint32_t) jerry_get_number_value (result) == 0u);
    jerry_release_value (result);
  }

  jerry_cleanup ();
}
