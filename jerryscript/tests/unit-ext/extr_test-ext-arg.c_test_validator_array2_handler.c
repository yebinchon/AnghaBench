
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_arg_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_COERCE ;
 int JERRYX_ARG_NO_COERCE ;
 int JERRYX_ARG_REQUIRED ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_boolean (int*,int ,int ) ;
 int jerryx_arg_number (double*,int ,int ) ;
 int jerryx_arg_transform_array (int const,int *,int ) ;
 int validator_array_count ;

__attribute__((used)) static jerry_value_t
test_validator_array2_handler (const jerry_value_t func_obj_val,
                               const jerry_value_t this_val,
                               const jerry_value_t args_p[],
                               const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);
  JERRY_UNUSED (args_cnt);

  double native1 = 0;
  bool native2 = 0;

  jerryx_arg_t item_mapping[] =
  {
    jerryx_arg_number (&native1, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_boolean (&native2, JERRYX_ARG_NO_COERCE, JERRYX_ARG_REQUIRED)
  };

  jerry_value_t is_ok = jerryx_arg_transform_array (args_p[0], item_mapping, ARRAY_SIZE (item_mapping));

  TEST_ASSERT (jerry_value_is_error (is_ok));
  TEST_ASSERT (native1 == 1);
  TEST_ASSERT (!native2);

  validator_array_count++;
  jerry_release_value (is_ok);

  return jerry_create_undefined ();
}
