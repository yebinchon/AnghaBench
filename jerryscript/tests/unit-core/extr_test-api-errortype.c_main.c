
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_values ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_error_t ;
typedef int jerry_char_t ;
typedef int errors ;


 scalar_t__ JERRY_ERROR_COMMON ;
 scalar_t__ JERRY_ERROR_EVAL ;
 scalar_t__ JERRY_ERROR_NONE ;
 scalar_t__ JERRY_ERROR_RANGE ;
 scalar_t__ JERRY_ERROR_REFERENCE ;
 scalar_t__ JERRY_ERROR_SYNTAX ;
 scalar_t__ JERRY_ERROR_TYPE ;
 scalar_t__ JERRY_ERROR_URI ;
 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int jerry_cleanup () ;
 int jerry_create_boolean (int) ;
 int jerry_create_error (scalar_t__,int const*) ;
 int jerry_create_number (int) ;
 int jerry_create_object () ;
 int jerry_create_string (int const*) ;
 scalar_t__ jerry_get_error_type (int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);

  jerry_error_t errors[] =
  {
    JERRY_ERROR_COMMON,
    JERRY_ERROR_EVAL,
    JERRY_ERROR_RANGE,
    JERRY_ERROR_REFERENCE,
    JERRY_ERROR_SYNTAX,
    JERRY_ERROR_TYPE,
    JERRY_ERROR_URI
  };

  for (size_t idx = 0; idx < sizeof (errors) / sizeof (errors[0]); idx++)
  {
    jerry_value_t error_obj = jerry_create_error (errors[idx], (const jerry_char_t *)"test");
    TEST_ASSERT (jerry_value_is_error (error_obj));
    TEST_ASSERT (jerry_get_error_type (error_obj) == errors[idx]);

    error_obj = jerry_get_value_from_error (error_obj, 1);

    TEST_ASSERT (jerry_get_error_type (error_obj) == errors[idx]);

    jerry_release_value (error_obj);
  }

  jerry_value_t test_values[] =
  {
    jerry_create_number (11),
    jerry_create_string ((const jerry_char_t *) "message"),
    jerry_create_boolean (1),
    jerry_create_object (),
  };

  for (size_t idx = 0; idx < sizeof (test_values) / sizeof (test_values[0]); idx++)
  {
    jerry_error_t error_type = jerry_get_error_type (test_values[idx]);
    TEST_ASSERT (error_type == JERRY_ERROR_NONE);
    jerry_release_value (test_values[idx]);
  }

  jerry_cleanup ();
}
