
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_INIT_EMPTY ;
 int jerry_cleanup () ;
 int jerry_init (int ) ;
 scalar_t__ native_free_cb_call_count ;
 int test_handle_scope_val () ;

int
main (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  native_free_cb_call_count = 0;
  test_handle_scope_val ();

  jerry_cleanup ();
}
