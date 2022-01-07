
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_size_t ;


 int jerry_create_undefined () ;

__attribute__((used)) static jerry_value_t
external_function (const jerry_value_t function_obj,
                   const jerry_value_t this_arg,
                   const jerry_value_t args_p[],
                   const jerry_size_t args_count)
{
  (void) function_obj;
  (void) this_arg;
  (void) args_p;
  (void) args_count;

  return jerry_create_undefined ();
}
