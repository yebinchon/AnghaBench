
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_COMMON ;
 int jerry_create_boolean (int) ;
 int jerry_create_error (int ,int *) ;
 scalar_t__ jerry_get_boolean_value (int const) ;
 scalar_t__ jerry_value_is_boolean (int const) ;

jerry_value_t
jerryx_handler_assert_throw (const jerry_value_t func_obj_val,
                             const jerry_value_t this_p,
                             const jerry_value_t args_p[],
                             const jerry_length_t args_cnt)
{
  (void) func_obj_val;
  (void) this_p;

  if (args_cnt == 1
      && jerry_value_is_boolean (args_p[0])
      && jerry_get_boolean_value (args_p[0]))
  {
    return jerry_create_boolean (1);
  }

  return jerry_create_error (JERRY_ERROR_COMMON, (jerry_char_t *) "assertion failed");
}
