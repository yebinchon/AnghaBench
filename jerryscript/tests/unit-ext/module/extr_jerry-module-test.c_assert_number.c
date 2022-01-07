
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int TEST_ASSERT (int) ;
 double jerry_get_number_value (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static void
assert_number (jerry_value_t js_value, double expected_result)
{
  TEST_ASSERT (!jerry_value_is_error (js_value));
  TEST_ASSERT (jerry_get_number_value (js_value) == expected_result);
}
