
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jerryx_arg_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;
struct TYPE_4__ {int bool_field; double double_field; } ;
struct TYPE_5__ {scalar_t__ type_of_value; TYPE_1__ value; } ;
typedef TYPE_2__ double_or_bool_t ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ BOOL_VALUE ;
 scalar_t__ DOUBLE_VALUE ;
 int JERRYX_ARG_NO_COERCE ;
 int JERRYX_ARG_REQUIRED ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_double_or_bool_t (TYPE_2__*,int ,int ,int) ;
 int jerryx_arg_transform_args (int const*,int const,int *,int ) ;

__attribute__((used)) static jerry_value_t
test_validator_restore_handler (const jerry_value_t func_obj_val,
                                const jerry_value_t this_val,
                                const jerry_value_t args_p[],
                                const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);

  double_or_bool_t arg1;
  double_or_bool_t arg2;

  jerryx_arg_t item_mapping[] =
  {
    jerryx_arg_double_or_bool_t (&arg1, JERRYX_ARG_NO_COERCE, JERRYX_ARG_REQUIRED, 0),
    jerryx_arg_double_or_bool_t (&arg2, JERRYX_ARG_NO_COERCE, JERRYX_ARG_REQUIRED, 1)
  };

  jerry_value_t is_ok = jerryx_arg_transform_args (args_p, args_cnt, item_mapping, ARRAY_SIZE (item_mapping));

  TEST_ASSERT (!jerry_value_is_error (is_ok));


  bool arg1_is_false = (arg1.type_of_value == BOOL_VALUE && arg1.value.bool_field == 0);
  bool arg1_is_three = (arg1.type_of_value == DOUBLE_VALUE && arg1.value.double_field == 3.0);
  bool arg2_is_false = (arg2.type_of_value == BOOL_VALUE && arg2.value.bool_field == 0);
  bool arg2_is_three = (arg2.type_of_value == DOUBLE_VALUE && arg2.value.double_field == 3.0);
  TEST_ASSERT ((arg1_is_false && arg2_is_three) || (arg1_is_three && arg2_is_false));

  jerry_release_value (is_ok);

  return jerry_create_undefined ();
}
