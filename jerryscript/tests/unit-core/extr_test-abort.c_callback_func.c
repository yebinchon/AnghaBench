
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const* const* const* const* const* const* const* const* jerry_value_t ;
typedef int const* const* const* const* const* const* const* const* const* jerry_length_t ;
typedef int jerry_char_t ;


 int JERRY_UNUSED (int const* const* const* const* const* const* const* const* const* const) ;
 int const* const* const* const* const* const******* jerry_create_abort_from_value (int const* const* const* const* const* const* const* const*,int) ;
 int const* const* const* const* const* const******* jerry_create_string (int *) ;

__attribute__((used)) static jerry_value_t
callback_func (const jerry_value_t function_obj,
               const jerry_value_t this_val,
               const jerry_value_t args_p[],
               const jerry_length_t args_count)
{
  JERRY_UNUSED (function_obj);
  JERRY_UNUSED (this_val);
  JERRY_UNUSED (args_p);
  JERRY_UNUSED (args_count);

  jerry_value_t value = jerry_create_string ((jerry_char_t *) "Abort run!");
  value = jerry_create_abort_from_value (value, 1);
  return value;
}
