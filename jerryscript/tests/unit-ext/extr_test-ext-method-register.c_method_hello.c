
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int jerry_create_number (int const) ;

__attribute__((used)) static jerry_value_t
method_hello (const jerry_value_t jfunc,
              const jerry_value_t jthis,
              const jerry_value_t jargv[],
              const jerry_length_t jargc)
{
  (void) jfunc;
  (void) jthis;
  (void) jargv;
  return jerry_create_number (jargc);
}
