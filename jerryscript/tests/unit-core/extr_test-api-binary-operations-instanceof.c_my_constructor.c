
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_length_t ;


 int jerry_create_undefined () ;

__attribute__((used)) static jerry_value_t
my_constructor (const jerry_value_t func_val,
                const jerry_value_t this_val,
                const jerry_value_t argv[],
                const jerry_length_t argc)
{
  (void) func_val;
  (void) this_val;
  (void) argv;
  (void) argc;
  return jerry_create_undefined ();
}
