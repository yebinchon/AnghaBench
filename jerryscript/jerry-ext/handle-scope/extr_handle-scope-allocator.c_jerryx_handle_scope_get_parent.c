
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int jerryx_handle_scope_t ;
struct TYPE_3__ {struct TYPE_3__* parent; } ;
typedef TYPE_1__ jerryx_handle_scope_dynamic_t ;
struct TYPE_4__ {int * prelist; TYPE_1__* start; } ;


 int * JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST ;
 int JERRYX_HANDLE_SCOPE_PRELIST_IDX (int *) ;
 int jerryx_handle_scope_is_in_prelist (int *) ;
 TYPE_2__ jerryx_handle_scope_pool ;
 int jerryx_handle_scope_root ;

jerryx_handle_scope_t *
jerryx_handle_scope_get_parent (jerryx_handle_scope_t *scope)
{
  if (scope == &jerryx_handle_scope_root)
  {
    return ((void*)0);
  }
  if (!jerryx_handle_scope_is_in_prelist (scope))
  {
    jerryx_handle_scope_dynamic_t *dy_scope = (jerryx_handle_scope_dynamic_t *) scope;
    if (dy_scope == jerryx_handle_scope_pool.start)
    {
      return JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST;
    }
    jerryx_handle_scope_dynamic_t *parent = dy_scope->parent;
    return (jerryx_handle_scope_t *) parent;
  }
  if (scope == jerryx_handle_scope_pool.prelist)
  {
    return &jerryx_handle_scope_root;
  }
  return jerryx_handle_scope_pool.prelist + JERRYX_HANDLE_SCOPE_PRELIST_IDX (scope) - 1;
}
