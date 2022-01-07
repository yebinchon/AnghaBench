
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_arg_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;
typedef int int8_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_CEIL ;
 int JERRYX_ARG_CLAMP ;
 int JERRYX_ARG_COERCE ;
 int JERRYX_ARG_FLOOR ;
 int JERRYX_ARG_NO_CLAMP ;
 int JERRYX_ARG_REQUIRED ;
 int JERRYX_ARG_ROUND ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_int8 (int*,int ,int ,int ,int ) ;
 int jerryx_arg_transform_args (int const*,int const,int *,int ) ;
 int validator_int_count ;

__attribute__((used)) static jerry_value_t
test_validator_int2_handler (const jerry_value_t func_obj_val,
                             const jerry_value_t this_val,
                             const jerry_value_t args_p[],
                             const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);

  int8_t num0, num1, num2, num3, num4, num5, num6, num7, num8, num9;
  num8 = 123;
  num9 = 123;

  jerryx_arg_t mapping[] =
  {
    jerryx_arg_int8 (&num0, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num1, JERRYX_ARG_FLOOR, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num2, JERRYX_ARG_CEIL, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num3, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num4, JERRYX_ARG_FLOOR, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num5, JERRYX_ARG_CEIL, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num6, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num7, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num8, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num9, JERRYX_ARG_ROUND, JERRYX_ARG_NO_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
  };

  jerry_value_t is_ok = jerryx_arg_transform_args (args_p,
                                                   args_cnt,
                                                   mapping,
                                                   ARRAY_SIZE (mapping));

  TEST_ASSERT (jerry_value_is_error (is_ok));
  TEST_ASSERT (num0 == -2);
  TEST_ASSERT (num1 == -2);
  TEST_ASSERT (num2 == -1);
  TEST_ASSERT (num3 == 2);
  TEST_ASSERT (num4 == 1);
  TEST_ASSERT (num5 == 2);
  TEST_ASSERT (num6 == 127);
  TEST_ASSERT (num7 == -128);
  TEST_ASSERT (num8 == 127);
  TEST_ASSERT (num9 == 123);

  jerry_release_value (is_ok);
  validator_int_count++;

  return jerry_create_undefined ();
}
