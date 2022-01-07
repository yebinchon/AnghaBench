
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_arg_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_COERCE ;
 int JERRYX_ARG_OPTIONAL ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_boolean (int*,int ,int ) ;
 int jerryx_arg_ignore () ;
 int jerryx_arg_transform_this_and_args (int const,int const*,int const,int *,int ) ;
 int validator3_count ;

__attribute__((used)) static jerry_value_t
test_validator3_handler (const jerry_value_t func_obj_val,
                         const jerry_value_t this_val,
                         const jerry_value_t args_p[],
                         const jerry_length_t args_cnt)
{

  JERRY_UNUSED (func_obj_val);

  bool arg1 = 0;
  bool arg2 = 0;

  jerryx_arg_t mapping[] =
  {

    jerryx_arg_ignore (),

    jerryx_arg_boolean (&arg1, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL),

    jerryx_arg_boolean (&arg2, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL),
  };

  jerry_value_t is_ok = jerryx_arg_transform_this_and_args (this_val,
                                                            args_p,
                                                            args_cnt,
                                                            mapping,
                                                            ARRAY_SIZE (mapping));

  if (validator3_count == 0)
  {
    TEST_ASSERT (!jerry_value_is_error (is_ok));
    TEST_ASSERT (arg1);
    TEST_ASSERT (arg2);
  }
  else if (validator3_count == 1)
  {
    TEST_ASSERT (!jerry_value_is_error (is_ok));
    TEST_ASSERT (arg1);

    TEST_ASSERT (!arg2);
  }
  else if (validator3_count == 2)
  {
    TEST_ASSERT (!jerry_value_is_error (is_ok));

    TEST_ASSERT (!arg1);

    TEST_ASSERT (!arg2);
  }
  else if (validator3_count == 3)
  {
    TEST_ASSERT (!jerry_value_is_error (is_ok));

    TEST_ASSERT (!arg1);

    TEST_ASSERT (!arg2);
  }

  jerry_release_value (is_ok);
  validator3_count++;

  return jerry_create_undefined ();
}
