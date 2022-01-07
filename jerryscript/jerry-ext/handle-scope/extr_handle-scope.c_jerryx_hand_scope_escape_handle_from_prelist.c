
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int jval; struct TYPE_5__* sibling; } ;
typedef TYPE_1__ jerryx_handle_t ;
typedef TYPE_2__* jerryx_handle_scope ;
typedef int jerry_value_t ;
struct TYPE_6__ {int prelist_handle_count; int * handle_prelist; TYPE_1__* handle_ptr; } ;


 int JERRYX_HANDLE_PRELIST_SIZE ;
 int free (TYPE_1__*) ;

jerry_value_t
jerryx_hand_scope_escape_handle_from_prelist (jerryx_handle_scope scope, size_t idx)
{
  jerry_value_t jval = scope->handle_prelist[idx];
  if (scope->prelist_handle_count == JERRYX_HANDLE_PRELIST_SIZE && scope->handle_ptr != ((void*)0))
  {
    jerryx_handle_t *handle = scope->handle_ptr;
    scope->handle_ptr = handle->sibling;
    scope->handle_prelist[idx] = handle->jval;
    free (handle);
    return jval;
  }

  if (idx < JERRYX_HANDLE_PRELIST_SIZE - 1)
  {
    scope->handle_prelist[idx] = scope->handle_prelist[scope->prelist_handle_count - 1];
  }
  return jval;
}
