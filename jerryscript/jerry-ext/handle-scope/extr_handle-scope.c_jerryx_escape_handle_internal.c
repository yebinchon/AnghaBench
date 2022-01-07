
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ jval; struct TYPE_7__* sibling; } ;
typedef TYPE_1__ jerryx_handle_t ;
typedef int jerryx_handle_scope_status ;
typedef int * jerryx_handle_scope ;
typedef TYPE_2__* jerryx_escapable_handle_scope ;
typedef scalar_t__ jerry_value_t ;
struct TYPE_8__ {int escaped; size_t prelist_handle_count; scalar_t__* handle_prelist; TYPE_1__* handle_ptr; } ;


 size_t JERRYX_HANDLE_PRELIST_SIZE ;
 int jerryx_create_handle_in_scope (scalar_t__,int *) ;
 int jerryx_escape_called_twice ;
 scalar_t__ jerryx_hand_scope_escape_handle_from_prelist (TYPE_2__*,size_t) ;
 scalar_t__ jerryx_handle_scope_add_handle_to (TYPE_1__*,int *) ;
 int * jerryx_handle_scope_get_parent (TYPE_2__*) ;
 int jerryx_handle_scope_mismatch ;
 int jerryx_handle_scope_ok ;

jerryx_handle_scope_status
jerryx_escape_handle_internal (jerryx_escapable_handle_scope scope,
                               jerry_value_t escapee,
                               jerry_value_t *result,
                               bool should_promote)
{
  if (scope->escaped)
  {
    return jerryx_escape_called_twice;
  }

  jerryx_handle_scope parent = jerryx_handle_scope_get_parent (scope);
  if (parent == ((void*)0))
  {
    return jerryx_handle_scope_mismatch;
  }

  bool found = 0;
  {
    size_t found_idx = 0;
    size_t prelist_count = scope->prelist_handle_count;




    for (size_t idx_plus_1 = prelist_count; idx_plus_1 > 0; --idx_plus_1)
    {
      if (escapee == scope->handle_prelist[idx_plus_1 - 1])
      {
        found = 1;
        found_idx = idx_plus_1 - 1;
        break;
      }
    }

    if (found)
    {
      *result = jerryx_hand_scope_escape_handle_from_prelist (scope, found_idx);

      --scope->prelist_handle_count;
      if (should_promote)
      {
        scope->escaped = 1;



        jerryx_create_handle_in_scope (*result, jerryx_handle_scope_get_parent (scope));
      }
      return jerryx_handle_scope_ok;
    }
  };

  if (scope->prelist_handle_count <= JERRYX_HANDLE_PRELIST_SIZE && scope->handle_ptr == ((void*)0))
  {
    return jerryx_handle_scope_mismatch;
  }





  jerryx_handle_t *handle = scope->handle_ptr;
  jerryx_handle_t *memo_handle = ((void*)0);
  jerryx_handle_t *found_handle = ((void*)0);
  while (!found)
  {
    if (handle == ((void*)0))
    {
      return jerryx_handle_scope_mismatch;
    }
    if (handle->jval != escapee)
    {
      memo_handle = handle;
      handle = handle->sibling;
      continue;
    }



    found = 1;
    found_handle = handle;
    if (memo_handle == ((void*)0))
    {

      scope->handle_ptr = found_handle->sibling;
    }
    else
    {
      memo_handle->sibling = found_handle->sibling;
    }
  }

  if (should_promote)
  {



    *result = jerryx_handle_scope_add_handle_to (found_handle, parent);
  }

  if (should_promote)
  {
    scope->escaped = 1;
  }
  return jerryx_handle_scope_ok;
}
