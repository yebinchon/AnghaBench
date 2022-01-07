
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_escapable_handle_scope ;
typedef int jerry_value_t ;


 int JERRY_GC_PRESSURE_LOW ;
 int TEST_ASSERT (int) ;
 int create_object () ;
 int jerry_gc (int ) ;
 int jerryx_close_handle_scope (int ) ;
 int jerryx_create_handle (int ) ;
 int jerryx_handle_scope_get_root () ;
 int native_free_cb_call_count ;
 int reusing_times ;

__attribute__((used)) static void
test_handle_scope_val (void)
{
  jerryx_escapable_handle_scope root = jerryx_handle_scope_get_root ();

  for (int i = 0; i < reusing_times; ++i)
  {
    jerry_value_t obj = jerryx_create_handle (create_object ());
    (void) obj;
    jerryx_close_handle_scope (root);
    jerry_gc (JERRY_GC_PRESSURE_LOW);
    TEST_ASSERT (native_free_cb_call_count == (i + 1));
  }
}
