
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jerry_value_t ;
typedef scalar_t__ jerry_length_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_TYPE ;
 scalar_t__ jerry_create_error (int ,int *) ;
 int printf (char*,unsigned int,unsigned int,void*,unsigned int) ;

__attribute__((used)) static jerry_value_t
handler_throw_test (const jerry_value_t func_obj_val,
                    const jerry_value_t this_val,
                    const jerry_value_t args_p[],
                    const jerry_length_t args_cnt)
{
  printf ("ok %u %u %p %u\n",
          (unsigned int) func_obj_val, (unsigned int) this_val, (void *) args_p, (unsigned int) args_cnt);

  return jerry_create_error (JERRY_ERROR_TYPE, (jerry_char_t *) "error");
}
