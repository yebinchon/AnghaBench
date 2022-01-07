
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int jerry_create_string (int const*) ;
 int jerry_create_undefined () ;

__attribute__((used)) static jerry_value_t
vm_exec_stop_callback (void *user_p)
{
  int *int_p = (int *) user_p;

  if (*int_p > 0)
  {
    (*int_p)--;

    return jerry_create_undefined ();
  }

  return jerry_create_string ((const jerry_char_t *) "Abort script");
}
