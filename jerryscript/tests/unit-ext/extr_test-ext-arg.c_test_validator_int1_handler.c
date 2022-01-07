
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int jerryx_arg_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;
typedef int int8_t ;
typedef int int32_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_CLAMP ;
 int JERRYX_ARG_COERCE ;
 int JERRYX_ARG_REQUIRED ;
 int JERRYX_ARG_ROUND ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_int32 (int*,int ,int ,int ,int ) ;
 int jerryx_arg_int8 (int*,int ,int ,int ,int ) ;
 int jerryx_arg_transform_args (int const*,int const,int *,int ) ;
 int jerryx_arg_uint32 (scalar_t__*,int ,int ,int ,int ) ;
 int jerryx_arg_uint8 (scalar_t__*,int ,int ,int ,int ) ;
 int validator_int_count ;

__attribute__((used)) static jerry_value_t
test_validator_int1_handler (const jerry_value_t func_obj_val,
                             const jerry_value_t this_val,
                             const jerry_value_t args_p[],
                             const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);

  uint8_t num0, num1, num2;
  int8_t num3, num4, num5;
  uint32_t num6, num7, num8;
  int32_t num9, num10, num11;

  jerryx_arg_t mapping[] =
  {
    jerryx_arg_uint8 (&num0, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_uint8 (&num1, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_uint8 (&num2, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num3, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num4, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int8 (&num5, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_uint32 (&num6, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_uint32 (&num7, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_uint32 (&num8, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int32 (&num9, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int32 (&num10, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_int32 (&num11, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED)
  };

  jerry_value_t is_ok = jerryx_arg_transform_args (args_p,
                                                   args_cnt,
                                                   mapping,
                                                   ARRAY_SIZE (mapping));

  TEST_ASSERT (!jerry_value_is_error (is_ok));
  TEST_ASSERT (num0 == 0);
  TEST_ASSERT (num1 == 255);
  TEST_ASSERT (num2 == 128);
  TEST_ASSERT (num3 == -128);
  TEST_ASSERT (num4 == 127);
  TEST_ASSERT (num5 == -127);
  TEST_ASSERT (num6 == 0);
  TEST_ASSERT (num7 == 4294967295);
  TEST_ASSERT (num8 == 65536);
  TEST_ASSERT (num9 == -2147483648);
  TEST_ASSERT (num10 == 2147483647);
  TEST_ASSERT (num11 == -2147483647);

  jerry_release_value (is_ok);
  validator_int_count++;

  return jerry_create_undefined ();
}
