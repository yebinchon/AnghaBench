
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; } ;
typedef TYPE_1__ my_type_a_t ;
typedef int jerryx_arg_t ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int ARRAY_SIZE (int *) ;
 int JERRYX_ARG_REQUIRED ;
 int JERRY_UNUSED (int const) ;
 int TEST_ASSERT (int) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_arg_custom (int *,int,int ) ;
 int jerryx_arg_native_pointer (void**,int *,int ) ;
 int jerryx_arg_transform_this_and_args (int const,int const*,int const,int *,int ) ;
 int my_custom_transform ;
 TYPE_1__ my_thing_a ;
 int thing_a_info ;
 scalar_t__ validator2_count ;

__attribute__((used)) static jerry_value_t
test_validator2_handler (const jerry_value_t func_obj_val,
                         const jerry_value_t this_val,
                         const jerry_value_t args_p[],
                         const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);

  my_type_a_t *thing_p;

  jerryx_arg_t mapping[] =
  {

    jerryx_arg_native_pointer ((void **) &thing_p, &thing_a_info, JERRYX_ARG_REQUIRED),

    jerryx_arg_custom (((void*)0), 5, my_custom_transform)
  };

  jerry_value_t is_ok = jerryx_arg_transform_this_and_args (this_val,
                                                            args_p,
                                                            args_cnt,
                                                            mapping,
                                                            ARRAY_SIZE (mapping));

  if (validator2_count == 0)
  {
    TEST_ASSERT (!jerry_value_is_error (is_ok));
    TEST_ASSERT (thing_p == &my_thing_a);
    TEST_ASSERT (thing_p->x == 1);
  }
  else
  {
    TEST_ASSERT (jerry_value_is_error (is_ok));
  }

  jerry_release_value (is_ok);
  validator2_count++;

  return jerry_create_undefined ();
}
