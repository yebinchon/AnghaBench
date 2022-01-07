
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jerryx_handle_scope ;
typedef int jerry_value_t ;


 int JERRYX_SCOPE_PRELIST_SIZE ;
 int JERRY_GC_PRESSURE_LOW ;
 int TEST_ASSERT (int) ;
 int create_object_nested (int) ;
 int jerry_gc (int ) ;
 int jerryx_close_handle_scope (scalar_t__) ;
 scalar_t__ jerryx_handle_scope_get_current () ;
 int jerryx_open_handle_scope (scalar_t__*) ;
 scalar_t__ native_free_cb_call_count ;

__attribute__((used)) static void
test_handle_scope_val (void)
{
  jerryx_handle_scope scope;
  jerryx_open_handle_scope (&scope);

  for (int idx = 0; idx < 2; ++idx)
  {
    jerry_value_t obj = create_object_nested (JERRYX_SCOPE_PRELIST_SIZE * 2);
    (void) obj;
  }

  TEST_ASSERT (jerryx_handle_scope_get_current () == scope);

  jerry_gc (JERRY_GC_PRESSURE_LOW);
  TEST_ASSERT (native_free_cb_call_count == 0);

  jerryx_close_handle_scope (scope);
}
