
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef scalar_t__ jerry_promise_state_t ;
typedef int jerry_char_t ;


 scalar_t__ JERRY_ERROR_TYPE ;
 scalar_t__ JERRY_PROMISE_STATE_PENDING ;
 scalar_t__ JERRY_PROMISE_STATE_REJECTED ;
 int TEST_ASSERT (int) ;
 int jerry_create_error (scalar_t__,int const*) ;
 int jerry_create_number (int) ;
 int jerry_create_promise () ;
 scalar_t__ jerry_get_error_type (int ) ;
 int jerry_get_promise_result (int ) ;
 scalar_t__ jerry_get_promise_state (int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_release_value (int ) ;
 int jerry_resolve_or_reject_promise (int ,int ,int) ;
 int jerry_value_is_object (int ) ;
 int jerry_value_is_undefined (int ) ;

__attribute__((used)) static void
test_promise_resolve_fail (void)
{
  jerry_value_t my_promise = jerry_create_promise ();


  {
    jerry_value_t promise_result = jerry_get_promise_result (my_promise);
    TEST_ASSERT (jerry_value_is_undefined (promise_result));

    jerry_promise_state_t promise_state = jerry_get_promise_state (my_promise);
    TEST_ASSERT (promise_state == JERRY_PROMISE_STATE_PENDING);

    jerry_release_value (promise_result);
  }


  {
    jerry_value_t error_value = jerry_create_error (JERRY_ERROR_TYPE, (const jerry_char_t *) "resolve_fail");
    jerry_value_t error_obj = jerry_get_value_from_error (error_value, 1);
    jerry_value_t resolve_result = jerry_resolve_or_reject_promise (my_promise, error_obj, 0);
    jerry_release_value (error_obj);

    jerry_value_t promise_result = jerry_get_promise_result (my_promise);

    TEST_ASSERT (jerry_value_is_object (promise_result));
    TEST_ASSERT (jerry_get_error_type (promise_result) == JERRY_ERROR_TYPE);

    jerry_promise_state_t promise_state = jerry_get_promise_state (my_promise);
    TEST_ASSERT (promise_state == JERRY_PROMISE_STATE_REJECTED);

    jerry_release_value (promise_result);

    jerry_release_value (resolve_result);
  }


  {
    jerry_value_t resolve_result = jerry_resolve_or_reject_promise (my_promise, jerry_create_number (50), 1);

    jerry_value_t promise_result = jerry_get_promise_result (my_promise);
    TEST_ASSERT (jerry_value_is_object (promise_result));
    TEST_ASSERT (jerry_get_error_type (promise_result) == JERRY_ERROR_TYPE);

    jerry_promise_state_t promise_state = jerry_get_promise_state (my_promise);
    TEST_ASSERT (promise_state == JERRY_PROMISE_STATE_REJECTED);

    jerry_release_value (promise_result);

    jerry_release_value (resolve_result);
  }

  jerry_release_value (my_promise);
}
