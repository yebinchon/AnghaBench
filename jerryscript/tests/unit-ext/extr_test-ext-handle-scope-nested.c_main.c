
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_GC_PRESSURE_LOW ;
 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int jerry_cleanup () ;
 int jerry_gc (int ) ;
 int jerry_init (int ) ;
 int native_free_cb_call_count ;
 int test_handle_scope_val () ;

int
main (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  native_free_cb_call_count = 0;
  test_handle_scope_val ();

  jerry_gc (JERRY_GC_PRESSURE_LOW);
  TEST_ASSERT (native_free_cb_call_count == 2);

  jerry_cleanup ();
}
