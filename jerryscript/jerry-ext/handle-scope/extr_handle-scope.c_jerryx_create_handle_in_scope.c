
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* sibling; void* jval; } ;
typedef TYPE_1__ jerryx_handle_t ;
typedef TYPE_2__* jerryx_handle_scope ;
typedef void* jerry_value_t ;
struct TYPE_6__ {size_t prelist_handle_count; TYPE_1__* handle_ptr; void** handle_prelist; } ;


 size_t JERRYX_HANDLE_PRELIST_SIZE ;
 int JERRYX_HANDLE_SCOPE_ASSERT (int ) ;
 TYPE_1__* malloc (int) ;

jerry_value_t
jerryx_create_handle_in_scope (jerry_value_t jval, jerryx_handle_scope scope)
{
  size_t prelist_handle_count = scope->prelist_handle_count;
  if (prelist_handle_count < JERRYX_HANDLE_PRELIST_SIZE)
  {
    scope->handle_prelist[prelist_handle_count] = jval;

    ++scope->prelist_handle_count;
    return jval;
  }
  jerryx_handle_t *handle = malloc (sizeof (jerryx_handle_t));
  JERRYX_HANDLE_SCOPE_ASSERT (handle != ((void*)0));
  handle->jval = jval;

  handle->sibling = scope->handle_ptr;
  scope->handle_ptr = handle;

  return jval;
}
