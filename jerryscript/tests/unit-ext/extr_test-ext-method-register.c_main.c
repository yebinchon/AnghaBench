
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_error_multiple_functions () ;
 int test_error_setvalue () ;
 int test_error_single_function () ;
 int test_simple_registration () ;

int
main (void)
{
  test_simple_registration ();
  test_error_setvalue ();
  test_error_single_function ();
  test_error_multiple_functions ();
  return 0;
}
