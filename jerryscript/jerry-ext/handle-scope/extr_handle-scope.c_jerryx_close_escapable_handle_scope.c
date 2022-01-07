
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_handle_scope_status ;
typedef int jerryx_handle_scope ;


 int jerryx_close_handle_scope (int ) ;

jerryx_handle_scope_status
jerryx_close_escapable_handle_scope (jerryx_handle_scope scope)
{
  return jerryx_close_handle_scope (scope);
}
