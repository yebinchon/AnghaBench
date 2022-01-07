
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* jerryx_escapable_handle_scope ;
typedef int jerry_value_t ;
struct TYPE_5__ {scalar_t__ prelist_handle_count; } ;


 scalar_t__ JERRYX_HANDLE_PRELIST_SIZE ;
 int TEST_ASSERT (int) ;
 size_t handle_count ;
 int jerry_create_object () ;
 int jerry_set_object_native_pointer (int ,int *,int *) ;
 int jerryx_close_handle_scope (TYPE_1__*) ;
 int jerryx_create_handle (int ) ;
 int jerryx_escape_handle (TYPE_1__*,int ,int *) ;
 int jerryx_open_escapable_handle_scope (TYPE_1__**) ;
 int native_info ;

__attribute__((used)) static jerry_value_t
create_object (void)
{
  jerryx_escapable_handle_scope scope;
  jerryx_open_escapable_handle_scope (&scope);

  jerry_value_t obj;
  for (size_t idx = 0; idx < handle_count; idx ++)
  {
    obj = jerryx_create_handle (jerry_create_object ());
    jerry_set_object_native_pointer (obj, ((void*)0), &native_info);
  }


  jerry_value_t escaped = 0;
  jerryx_escape_handle (scope, obj, &escaped);
  TEST_ASSERT (scope->prelist_handle_count == JERRYX_HANDLE_PRELIST_SIZE);

  jerryx_close_handle_scope (scope);
  return escaped;
}
