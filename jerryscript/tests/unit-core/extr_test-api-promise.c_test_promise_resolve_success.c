
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef scalar_t__ jerry_promise_state_t ;
typedef int jerry_char_t ;


 scalar_t__ JERRY_PROMISE_STATE_FULFILLED ;
 scalar_t__ JERRY_PROMISE_STATE_PENDING ;
 int TEST_ASSERT (int) ;
 int jerry_create_number (int) ;
 int jerry_create_object () ;
 int jerry_create_promise () ;
 int jerry_create_string (int const*) ;
 int jerry_get_boolean_value (int ) ;
 double jerry_get_number_value (int ) ;
 int jerry_get_promise_result (int ) ;
 scalar_t__ jerry_get_promise_state (int ) ;
 int jerry_get_property (int ,int ) ;
 int jerry_release_value (int ) ;
 int jerry_resolve_or_reject_promise (int ,int ,int) ;
 int jerry_set_property (int ,int ,int ) ;
 scalar_t__ jerry_value_is_boolean (int ) ;
 int jerry_value_is_number (int ) ;
 int jerry_value_is_object (int ) ;
 int jerry_value_is_undefined (int ) ;

__attribute__((used)) static void
test_promise_resolve_success (void)
{
  jerry_value_t my_promise = jerry_create_promise ();


  {
    jerry_value_t promise_result = jerry_get_promise_result (my_promise);
    TEST_ASSERT (jerry_value_is_undefined (promise_result));

    jerry_promise_state_t promise_state = jerry_get_promise_state (my_promise);
    TEST_ASSERT (promise_state == JERRY_PROMISE_STATE_PENDING);

    jerry_release_value (promise_result);
  }

  jerry_value_t resolve_value = jerry_create_object ();
  {
    jerry_value_t obj_key = jerry_create_string ((const jerry_char_t *) "key_one");
    jerry_value_t set_result = jerry_set_property (resolve_value, obj_key, jerry_create_number (3));
    TEST_ASSERT (jerry_value_is_boolean (set_result) && (jerry_get_boolean_value (set_result) == 1));
    jerry_release_value (set_result);
    jerry_release_value (obj_key);
  }


  {
    jerry_value_t resolve_result = jerry_resolve_or_reject_promise (my_promise, resolve_value, 1);


    jerry_release_value (resolve_value);

    jerry_value_t promise_result = jerry_get_promise_result (my_promise);
    {
      TEST_ASSERT (jerry_value_is_object (promise_result));
      jerry_value_t obj_key = jerry_create_string ((const jerry_char_t *) "key_one");
      jerry_value_t get_result = jerry_get_property (promise_result, obj_key);
      TEST_ASSERT (jerry_value_is_number (get_result));
      TEST_ASSERT (jerry_get_number_value (get_result) == 3.0);

      jerry_release_value (get_result);
      jerry_release_value (obj_key);
    }

    jerry_promise_state_t promise_state = jerry_get_promise_state (my_promise);
    TEST_ASSERT (promise_state == JERRY_PROMISE_STATE_FULFILLED);

    jerry_release_value (promise_result);

    jerry_release_value (resolve_result);
  }


  {
    jerry_value_t resolve_result = jerry_resolve_or_reject_promise (my_promise, jerry_create_number (50), 0);

    jerry_value_t promise_result = jerry_get_promise_result (my_promise);
    {
      TEST_ASSERT (jerry_value_is_object (promise_result));
      jerry_value_t obj_key = jerry_create_string ((const jerry_char_t *) "key_one");
      jerry_value_t get_result = jerry_get_property (promise_result, obj_key);
      TEST_ASSERT (jerry_value_is_number (get_result));
      TEST_ASSERT (jerry_get_number_value (get_result) == 3.0);

      jerry_release_value (get_result);
      jerry_release_value (obj_key);
    }

    jerry_promise_state_t promise_state = jerry_get_promise_state (my_promise);
    TEST_ASSERT (promise_state == JERRY_PROMISE_STATE_FULFILLED);

    jerry_release_value (promise_result);

    jerry_release_value (resolve_result);
  }

  jerry_release_value (my_promise);
}
