
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trampoline; int last_report; int trampoline_enabled; } ;


 int CL_TRACE (int ) ;
 int CL_TRACE__TEST__LONGJMP ;
 TYPE_1__ _clar ;
 int clar_print_onabort (char*) ;
 int clar_report_errors (int ) ;
 int exit (int) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void abort_test(void)
{
 if (!_clar.trampoline_enabled) {
  clar_print_onabort(
    "Fatal error: a cleanup method raised an exception.");
  clar_report_errors(_clar.last_report);
  exit(-1);
 }

 CL_TRACE(CL_TRACE__TEST__LONGJMP);
 longjmp(_clar.trampoline, -1);
}
