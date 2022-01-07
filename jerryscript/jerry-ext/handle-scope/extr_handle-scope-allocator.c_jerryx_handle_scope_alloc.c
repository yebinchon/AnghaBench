
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int escaped; int * handle_ptr; scalar_t__ prelist_handle_count; } ;
typedef TYPE_1__ jerryx_handle_scope_t ;
struct TYPE_8__ {struct TYPE_8__* parent; struct TYPE_8__* child; } ;
typedef TYPE_2__ jerryx_handle_scope_dynamic_t ;
struct TYPE_9__ {scalar_t__ count; TYPE_2__* start; TYPE_1__* prelist; } ;


 int JERRYX_HANDLE_SCOPE_ASSERT (int ) ;
 scalar_t__ JERRYX_SCOPE_PRELIST_SIZE ;
 TYPE_1__* jerryx_handle_scope_current ;
 TYPE_4__ jerryx_handle_scope_pool ;
 TYPE_2__* malloc (int) ;

jerryx_handle_scope_t *
jerryx_handle_scope_alloc (void)
{
  jerryx_handle_scope_t *scope;
  if (jerryx_handle_scope_pool.count < JERRYX_SCOPE_PRELIST_SIZE)
  {
    scope = jerryx_handle_scope_pool.prelist + jerryx_handle_scope_pool.count;
  }
  else
  {
    jerryx_handle_scope_dynamic_t *dy_scope = malloc (sizeof (jerryx_handle_scope_dynamic_t));
    JERRYX_HANDLE_SCOPE_ASSERT (dy_scope != ((void*)0));
    dy_scope->child = ((void*)0);

    if (jerryx_handle_scope_pool.count != JERRYX_SCOPE_PRELIST_SIZE)
    {
      jerryx_handle_scope_dynamic_t *dy_current = (jerryx_handle_scope_dynamic_t *) jerryx_handle_scope_current;
      dy_scope->parent = dy_current;
      dy_current->child = dy_scope;
    }
    else
    {
      jerryx_handle_scope_pool.start = dy_scope;
      dy_scope->parent = ((void*)0);
    }

    scope = (jerryx_handle_scope_t *) dy_scope;
  }

  scope->prelist_handle_count = 0;
  scope->escaped = 0;
  scope->handle_ptr = ((void*)0);

  jerryx_handle_scope_current = scope;
  ++jerryx_handle_scope_pool.count;
  return (jerryx_handle_scope_t *) scope;
}
