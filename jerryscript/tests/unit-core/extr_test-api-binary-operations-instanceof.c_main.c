
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ expected; int rhs; int lhs; } ;
typedef TYPE_1__ test_entry_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;
typedef int error_tests ;
typedef int bool_tests ;


 int JERRY_BIN_OP_INSTANCEOF ;
 int JERRY_INIT_EMPTY ;
 TYPE_1__ T (int ,int ,int) ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int jerry_acquire_value (int ) ;
 int jerry_binary_operation (int ,int ,int ) ;
 int jerry_cleanup () ;
 int jerry_construct_object (int ,int *,int ) ;
 int jerry_create_array (int) ;
 int jerry_create_error_from_value (int ,int) ;
 int jerry_create_external_function (int ) ;
 int jerry_create_null () ;
 int jerry_create_number (double) ;
 int jerry_create_object () ;
 int jerry_create_string (int const*) ;
 int jerry_create_undefined () ;
 scalar_t__ jerry_get_boolean_value (int ) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int my_constructor ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t base_obj = jerry_create_object ();
  jerry_value_t constructor = jerry_create_external_function (my_constructor);

  jerry_value_t no_proto_instance_val = jerry_construct_object (constructor, ((void*)0), 0);

  jerry_value_t prototype_str = jerry_create_string ((const jerry_char_t *) "prototype");
  jerry_value_t res = jerry_set_property (constructor, prototype_str, base_obj);
  jerry_release_value (prototype_str);
  TEST_ASSERT (!jerry_value_is_error (res));
  jerry_release_value (res);

  jerry_value_t instance_val = jerry_construct_object (constructor, ((void*)0), 0);

  jerry_value_t error = jerry_create_error_from_value (base_obj, 0);

  test_entry_t bool_tests[] =
  {
    T (jerry_acquire_value (instance_val), jerry_acquire_value (constructor), 1),
    T (jerry_acquire_value (no_proto_instance_val), jerry_acquire_value (constructor), 0),
    T (jerry_acquire_value (base_obj), jerry_acquire_value (constructor), 0)
  };

  for (uint32_t idx = 0; idx < sizeof (bool_tests) / sizeof (test_entry_t); idx++)
  {
    jerry_value_t result = jerry_binary_operation (JERRY_BIN_OP_INSTANCEOF,
                                                   bool_tests[idx].lhs,
                                                   bool_tests[idx].rhs);
    TEST_ASSERT (!jerry_value_is_error (result));
    TEST_ASSERT (jerry_get_boolean_value (result) == bool_tests[idx].expected);
    jerry_release_value (bool_tests[idx].lhs);
    jerry_release_value (bool_tests[idx].rhs);
    jerry_release_value (result);
  }

  test_entry_t error_tests[] =
  {
    T (jerry_acquire_value (constructor), jerry_acquire_value (instance_val), 1),
    T (jerry_create_undefined (), jerry_acquire_value (constructor), 1),
    T (jerry_acquire_value (instance_val), jerry_create_undefined (), 1),
    T (jerry_acquire_value (instance_val), jerry_acquire_value (base_obj), 1),
    T (jerry_acquire_value (error), jerry_acquire_value (constructor), 1),
    T (jerry_acquire_value (instance_val), jerry_acquire_value (error), 1),
    T (jerry_create_string ((const jerry_char_t *) ""), jerry_create_string ((const jerry_char_t *) ""), 1),
    T (jerry_create_string ((const jerry_char_t *) ""), jerry_create_number (5.0), 1),
    T (jerry_create_number (5.0), jerry_create_string ((const jerry_char_t *) ""), 1),
    T (jerry_create_array (1), jerry_create_array (1), 1),
    T (jerry_create_array (1), jerry_create_object (), 1),
    T (jerry_create_object (), jerry_create_array (1), 1),
    T (jerry_create_null (), jerry_create_object (), 1),
    T (jerry_create_object (), jerry_create_string ((const jerry_char_t *) ""), 1)
  };

  for (uint32_t idx = 0; idx < sizeof (error_tests) / sizeof (test_entry_t); idx++)
  {
    jerry_value_t result = jerry_binary_operation (JERRY_BIN_OP_INSTANCEOF,
                                                   error_tests[idx].lhs,
                                                   error_tests[idx].rhs);
    TEST_ASSERT (jerry_value_is_error (result) == error_tests[idx].expected);
    jerry_release_value (error_tests[idx].lhs);
    jerry_release_value (error_tests[idx].rhs);
    jerry_release_value (result);
  }

  jerry_release_value (base_obj);
  jerry_release_value (constructor);
  jerry_release_value (error);
  jerry_release_value (instance_val);
  jerry_release_value (no_proto_instance_val);

  jerry_cleanup ();

  return 0;
}
