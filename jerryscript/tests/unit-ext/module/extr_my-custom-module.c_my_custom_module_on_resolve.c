
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_create_number (int) ;

__attribute__((used)) static jerry_value_t
my_custom_module_on_resolve (void)
{
  return jerry_create_number (42);
}
