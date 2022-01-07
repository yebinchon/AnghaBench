
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basic_test_data {int (* legacy_test_fn ) () ;} ;


 scalar_t__ called ;
 int in_legacy_test_wrapper ;
 int stub1 () ;
 scalar_t__ test_ok ;
 int tt_abort_msg (char*) ;

void
run_legacy_test_fn(void *ptr)
{
 struct basic_test_data *data = ptr;
 test_ok = called = 0;

 in_legacy_test_wrapper = 1;
 data->legacy_test_fn();
 in_legacy_test_wrapper = 0;

 if (!test_ok)
  tt_abort_msg("Legacy unit test failed");

end:
 test_ok = 0;
}
