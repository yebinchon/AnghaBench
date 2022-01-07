
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_FEATURE_LINE_INFO ;
 int TEST_ASSERT (int ) ;
 int TEST_INIT () ;
 int jerry_is_feature_enabled (int ) ;
 int test_exception_backtrace () ;
 int test_get_backtrace_api_call () ;
 int test_large_line_count () ;

int
main (void)
{
  TEST_INIT ();

  TEST_ASSERT (jerry_is_feature_enabled (JERRY_FEATURE_LINE_INFO));

  test_get_backtrace_api_call ();
  test_exception_backtrace ();
  test_large_line_count ();

  return 0;
}
