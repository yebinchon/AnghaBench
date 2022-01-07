
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_FEATURE_PROMISE ;
 int JERRY_INIT_EMPTY ;
 int JERRY_LOG_LEVEL_ERROR ;
 int jerry_cleanup () ;
 int jerry_init (int ) ;
 int jerry_is_feature_enabled (int ) ;
 int jerry_port_log (int ,char*) ;
 int test_promise_from_js () ;
 int test_promise_resolve_fail () ;
 int test_promise_resolve_success () ;

int
main (void)
{
  if (!jerry_is_feature_enabled (JERRY_FEATURE_PROMISE))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Promise is disabled!\n");
    return 0;
  }

  jerry_init (JERRY_INIT_EMPTY);

  test_promise_resolve_fail ();
  test_promise_resolve_success ();

  test_promise_from_js ();

  jerry_cleanup ();

  return 0;
}
