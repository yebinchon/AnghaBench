
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jerryx_arg_t ;
struct TYPE_3__ {int name_cnt; int c_arg_cnt; int * c_arg_p; int const** name_p; } ;
typedef TYPE_1__ jerryx_arg_object_props_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;
typedef int jerry_char_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_COERCE ;
 int JERRYX_ARG_OPTIONAL ;
 int JERRYX_ARG_REQUIRED ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_boolean (int*,int ,int ) ;
 int jerryx_arg_number (double*,int ,int ) ;
 int jerryx_arg_object_properties (TYPE_1__*,int ) ;
 int jerryx_arg_transform_args (int const*,int const,int *,int ) ;
 int validator_prop_count ;

__attribute__((used)) static jerry_value_t
test_validator_prop2_handler (const jerry_value_t func_obj_val,
                              const jerry_value_t this_val,
                              const jerry_value_t args_p[],
                              const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);

  bool native1 = 0;
  double native2 = 0;
  double native3 = 3;

  jerryx_arg_object_props_t prop_info;

  const char *name_p[] = { "prop1", "prop2", "prop3" };

  jerryx_arg_t prop_mapping[] =
  {
    jerryx_arg_boolean (&native1, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_number (&native2, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    jerryx_arg_number (&native3, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL)
  };

  prop_info.name_p = (const jerry_char_t **) name_p;
  prop_info.name_cnt = 3;
  prop_info.c_arg_p = prop_mapping;
  prop_info.c_arg_cnt = 3;

  jerryx_arg_t mapping[] =
  {
    jerryx_arg_object_properties (&prop_info, JERRYX_ARG_OPTIONAL),
  };

  jerry_value_t is_ok = jerryx_arg_transform_args (args_p, args_cnt, mapping, ARRAY_SIZE (mapping));


  TEST_ASSERT (!jerry_value_is_error (is_ok));

  if (validator_prop_count == 1)
  {
    TEST_ASSERT (native1);
    TEST_ASSERT (native2 == 1.5);
    TEST_ASSERT (native3 == 3);
  }

  validator_prop_count++;

  return jerry_create_undefined ();
}
