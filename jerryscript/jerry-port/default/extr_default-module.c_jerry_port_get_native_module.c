
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_create_undefined () ;

jerry_value_t
jerry_port_get_native_module (jerry_value_t name)
{
  (void) name;
  return jerry_create_undefined ();
}
