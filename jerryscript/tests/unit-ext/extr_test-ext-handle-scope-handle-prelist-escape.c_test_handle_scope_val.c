
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_handle_scope ;
typedef int jerry_value_t ;


 int JERRY_GC_PRESSURE_LOW ;
 int TEST_ASSERT (int) ;
 int create_object () ;
 int handle_count ;
 int jerry_gc (int ) ;
 int jerryx_close_handle_scope (int ) ;
 int jerryx_open_handle_scope (int *) ;
 int native_free_cb_call_count ;

__attribute__((used)) static void
test_handle_scope_val (void)
{
  jerryx_handle_scope scope;
  jerryx_open_handle_scope (&scope);
  jerry_value_t obj = create_object ();
  (void) obj;

  jerry_gc (JERRY_GC_PRESSURE_LOW);
  TEST_ASSERT (native_free_cb_call_count == (handle_count -1));

  jerryx_close_handle_scope (scope);
}
