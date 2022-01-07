
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jerryx_arg_t ;
struct TYPE_3__ {int c_arg_cnt; int * c_arg_p; } ;
typedef TYPE_1__ jerryx_arg_array_items_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_COERCE ;
 int JERRYX_ARG_OPTIONAL ;
 int JERRYX_ARG_REQUIRED ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_array (TYPE_1__*,int ) ;
 int jerryx_arg_number (double*,int ,int ) ;
 int jerryx_arg_transform_args (int const*,int const,int *,int ) ;
 scalar_t__ validator_array_count ;

__attribute__((used)) static jerry_value_t
test_validator_array1_handler (const jerry_value_t func_obj_val,
                               const jerry_value_t this_val,
                               const jerry_value_t args_p[],
                               const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);

  double native1 = 0;
  double native2 = 0;
  double native3 = 0;

  jerryx_arg_array_items_t arr_info;

  jerryx_arg_t item_mapping[] =
  {
    jerryx_arg_number (&native1, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_number (&native2, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_number (&native3, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL)
  };

  arr_info.c_arg_p = item_mapping;
  arr_info.c_arg_cnt = 3;

  jerryx_arg_t mapping[] =
  {
    jerryx_arg_array (&arr_info, JERRYX_ARG_OPTIONAL),
  };

  jerry_value_t is_ok = jerryx_arg_transform_args (args_p, args_cnt, mapping, ARRAY_SIZE (mapping));


  TEST_ASSERT (!jerry_value_is_error (is_ok));

  if (validator_array_count == 0)
  {
    TEST_ASSERT (native1 == 1);
    TEST_ASSERT (native2 == 2);
    TEST_ASSERT (native3 == 0);
  }

  validator_array_count++;

  return jerry_create_undefined ();
}
