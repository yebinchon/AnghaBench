
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const* const* const* const* const* const* const* const* jerry_value_t ;
typedef int const* const* const* const* const* const* const* const* const* jerry_length_t ;


 int JERRY_UNUSED (int const* const* const* const* const* const* const* const* const* const) ;
 int jerry_acquire_value (int const* const* const* const* const* const* const* const*) ;
 int const* const* const* const* const* const******* jerry_create_promise () ;
 int my_promise2 ;

__attribute__((used)) static jerry_value_t
create_promise2_handler (const jerry_value_t func_obj_val,
                         const jerry_value_t this_val,
                         const jerry_value_t args_p[],
                         const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (this_val);
  JERRY_UNUSED (args_p);
  JERRY_UNUSED (args_cnt);

  jerry_value_t ret = jerry_create_promise ();
  my_promise2 = jerry_acquire_value (ret);

  return ret;
}
