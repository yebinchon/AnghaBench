
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int jerryx_handler_assert_fatal (int const,int const,int const*,int const) ;

jerry_value_t
jerryx_handler_assert (const jerry_value_t func_obj_val,
                       const jerry_value_t this_p,
                       const jerry_value_t args_p[],
                       const jerry_length_t args_cnt)
{
  return jerryx_handler_assert_fatal (func_obj_val, this_p, args_p, args_cnt);
}
