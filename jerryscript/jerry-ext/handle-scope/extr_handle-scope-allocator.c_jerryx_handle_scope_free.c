
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jerryx_handle_scope_t ;
struct TYPE_6__ {struct TYPE_6__* child; TYPE_1__* parent; } ;
typedef TYPE_2__ jerryx_handle_scope_dynamic_t ;
struct TYPE_7__ {TYPE_2__* start; int count; } ;
struct TYPE_5__ {TYPE_2__* child; } ;


 int free (TYPE_2__*) ;
 int * jerryx_handle_scope_current ;
 int * jerryx_handle_scope_get_parent (int *) ;
 int jerryx_handle_scope_is_in_prelist (int *) ;
 TYPE_3__ jerryx_handle_scope_pool ;
 int jerryx_handle_scope_root ;

void
jerryx_handle_scope_free (jerryx_handle_scope_t *scope)
{
  if (scope == &jerryx_handle_scope_root)
  {
    return;
  }

  --jerryx_handle_scope_pool.count;
  if (scope == jerryx_handle_scope_current)
  {
    jerryx_handle_scope_current = jerryx_handle_scope_get_parent (scope);
  }

  if (!jerryx_handle_scope_is_in_prelist (scope))
  {
    jerryx_handle_scope_dynamic_t *dy_scope = (jerryx_handle_scope_dynamic_t *) scope;
    if (dy_scope == jerryx_handle_scope_pool.start)
    {
      jerryx_handle_scope_pool.start = dy_scope->child;
    }
    else if (dy_scope->parent != ((void*)0))
    {
      dy_scope->parent->child = dy_scope->child;
    }
    free (dy_scope);
    return;
  }



}
