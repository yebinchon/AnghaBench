
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_handle_scope_t ;


 int jerryx_handle_scope_root ;

jerryx_handle_scope_t *
jerryx_handle_scope_get_root (void)
{
  return &jerryx_handle_scope_root;
}
