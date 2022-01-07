
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clar_func {int name; int (* ptr ) () ;} ;
struct TYPE_4__ {int trampoline_enabled; TYPE_1__* last_report; int tests_ran; scalar_t__ report_errors_only; int * local_cleanup_payload; int (* local_cleanup ) (int *) ;int trampoline; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 scalar_t__ CL_TEST_NOTRUN ;
 scalar_t__ CL_TEST_OK ;
 int CL_TRACE (int ) ;
 int CL_TRACE__TEST__BEGIN ;
 int CL_TRACE__TEST__END ;
 int CL_TRACE__TEST__RUN_BEGIN ;
 int CL_TRACE__TEST__RUN_END ;
 TYPE_2__ _clar ;
 int clar_print_ontest (int ,int ,scalar_t__) ;
 int clar_report_errors (TYPE_1__*) ;
 scalar_t__ setjmp (int ) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int *) ;
 int stub4 () ;

__attribute__((used)) static void
clar_run_test(
 const struct clar_func *test,
 const struct clar_func *initialize,
 const struct clar_func *cleanup)
{
 _clar.trampoline_enabled = 1;

 CL_TRACE(CL_TRACE__TEST__BEGIN);

 if (setjmp(_clar.trampoline) == 0) {
  if (initialize->ptr != ((void*)0))
   initialize->ptr();

  CL_TRACE(CL_TRACE__TEST__RUN_BEGIN);
  test->ptr();
  CL_TRACE(CL_TRACE__TEST__RUN_END);
 }

 _clar.trampoline_enabled = 0;

 if (_clar.last_report->status == CL_TEST_NOTRUN)
  _clar.last_report->status = CL_TEST_OK;

 if (_clar.local_cleanup != ((void*)0))
  _clar.local_cleanup(_clar.local_cleanup_payload);

 if (cleanup->ptr != ((void*)0))
  cleanup->ptr();

 CL_TRACE(CL_TRACE__TEST__END);

 _clar.tests_ran++;


 _clar.local_cleanup = ((void*)0);
 _clar.local_cleanup_payload = ((void*)0);

 if (_clar.report_errors_only) {
  clar_report_errors(_clar.last_report);
 } else {
  clar_print_ontest(test->name, _clar.tests_ran, _clar.last_report->status);
 }
}
