
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_handle_scope_status ;
typedef int jerryx_escapable_handle_scope ;
typedef int jerry_value_t ;


 int jerryx_escape_handle_internal (int ,int ,int *,int) ;

jerryx_handle_scope_status
jerryx_remove_handle (jerryx_escapable_handle_scope scope,
                      jerry_value_t escapee,
                      jerry_value_t *result)
{
  return jerryx_escape_handle_internal (scope, escapee, result, 0);
}
