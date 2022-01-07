
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_length_t ;


 int JERRY_UNUSED (int const) ;
 int jerry_get_backtrace (scalar_t__) ;
 scalar_t__ jerry_get_number_value (int const) ;
 scalar_t__ jerry_value_is_number (int const) ;

__attribute__((used)) static jerry_value_t
backtrace_handler (const jerry_value_t function_obj,
                   const jerry_value_t this_val,
                   const jerry_value_t args_p[],
                   const jerry_length_t args_count)
{
  JERRY_UNUSED (function_obj);
  JERRY_UNUSED (this_val);

  uint32_t max_depth = 0;

  if (args_count > 0 && jerry_value_is_number (args_p[0]))
  {
    max_depth = (uint32_t) jerry_get_number_value (args_p[0]);
  }

  return jerry_get_backtrace (max_depth);
}
