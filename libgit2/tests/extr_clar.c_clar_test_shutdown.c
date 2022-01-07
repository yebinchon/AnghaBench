
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clar_report {struct clar_report* next; } ;
struct clar_explicit {struct clar_explicit* next; } ;
struct TYPE_2__ {struct clar_report* summary_filename; struct clar_report* reports; struct clar_report* explicit; int summary; scalar_t__ write_summary; int total_errors; int tests_ran; } ;


 TYPE_1__ _clar ;
 scalar_t__ _clar_suite_count ;
 int clar_print_onabort (char*) ;
 int clar_print_shutdown (int ,int,int ) ;
 scalar_t__ clar_summary_shutdown (int ) ;
 int clar_unsandbox () ;
 int exit (int) ;
 int free (struct clar_report*) ;

void
clar_test_shutdown(void)
{
 struct clar_explicit *explicit, *explicit_next;
 struct clar_report *report, *report_next;

 clar_print_shutdown(
  _clar.tests_ran,
  (int)_clar_suite_count,
  _clar.total_errors
 );

 clar_unsandbox();

 if (_clar.write_summary && clar_summary_shutdown(_clar.summary) < 0) {
  clar_print_onabort("Failed to write the summary file\n");
  exit(-1);
 }

 for (explicit = _clar.explicit; explicit; explicit = explicit_next) {
  explicit_next = explicit->next;
  free(explicit);
 }

 for (report = _clar.reports; report; report = report_next) {
  report_next = report->next;
  free(report);
 }

 free(_clar.summary_filename);
}
