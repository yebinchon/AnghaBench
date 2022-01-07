
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int TEST_ASSERT (int) ;
 int jerry_get_boolean_value (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_boolean (int ) ;

__attribute__((used)) static void
assert_boolean_and_release (jerry_value_t result, bool expected)
{
  TEST_ASSERT (jerry_value_is_boolean (result));
  TEST_ASSERT (jerry_get_boolean_value (result) == expected);
  jerry_release_value (result);
}
