
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int count_in_assert ;
 int jerry_create_boolean (int) ;
 scalar_t__ jerry_get_boolean_value (int const) ;
 scalar_t__ jerry_value_is_boolean (int const) ;

__attribute__((used)) static jerry_value_t
assert_handler (const jerry_value_t func_obj_val,
                const jerry_value_t this_val,
                const jerry_value_t args_p[],
                const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);

  count_in_assert++;

  if (args_cnt == 1
      && jerry_value_is_boolean (args_p[0])
      && jerry_get_boolean_value (args_p[0]))
  {
    return jerry_create_boolean (1);
  }
  else
  {
    TEST_ASSERT (0);
  }
}
