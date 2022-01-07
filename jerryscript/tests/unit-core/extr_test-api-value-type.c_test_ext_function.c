
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int jerry_create_boolean (int) ;

__attribute__((used)) static jerry_value_t
test_ext_function (const jerry_value_t function_obj,
                   const jerry_value_t this_val,
                   const jerry_value_t args_p[],
                   const jerry_length_t args_cnt)
{
  (void) function_obj;
  (void) this_val;
  (void) args_p;
  (void) args_cnt;
  return jerry_create_boolean (1);
}
