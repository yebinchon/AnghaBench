
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerryx_create_handle_in_scope (int ,int ) ;
 int jerryx_handle_scope_get_current () ;

jerry_value_t
jerryx_create_handle (jerry_value_t jval)
{
  return jerryx_create_handle_in_scope (jval, jerryx_handle_scope_get_current ());
}
