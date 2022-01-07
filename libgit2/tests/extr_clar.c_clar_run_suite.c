
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clar_suite {char const* name; size_t test_count; int cleanup; int initialize; int enabled; struct clar_func* tests; } ;
struct clar_report {char const* suite; struct clar_report* next; int status; int test_number; int * test; } ;
struct clar_func {int * name; } ;
struct TYPE_2__ {char const* active_suite; int * active_test; scalar_t__ total_errors; scalar_t__ exit_on_error; struct clar_report* last_report; struct clar_report* reports; int tests_ran; int suites_ran; int report_errors_only; } ;


 int CL_TEST_NOTRUN ;
 int CL_TRACE (int ) ;
 int CL_TRACE__SUITE_BEGIN ;
 int CL_TRACE__SUITE_END ;
 TYPE_1__ _clar ;
 struct clar_report* calloc (int,int) ;
 int clar_print_onsuite (char const*,int ) ;
 int clar_run_test (struct clar_func const*,int *,int *) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (int *,char const*,size_t) ;

__attribute__((used)) static void
clar_run_suite(const struct clar_suite *suite, const char *filter)
{
 const struct clar_func *test = suite->tests;
 size_t i, matchlen;
 struct clar_report *report;

 if (!suite->enabled)
  return;

 if (_clar.exit_on_error && _clar.total_errors)
  return;

 if (!_clar.report_errors_only)
  clar_print_onsuite(suite->name, ++_clar.suites_ran);

 _clar.active_suite = suite->name;
 _clar.active_test = ((void*)0);
 CL_TRACE(CL_TRACE__SUITE_BEGIN);

 if (filter) {
  size_t suitelen = strlen(suite->name);
  matchlen = strlen(filter);
  if (matchlen <= suitelen) {
   filter = ((void*)0);
  } else {
   filter += suitelen;
   while (*filter == ':')
    ++filter;
   matchlen = strlen(filter);
  }
 }

 for (i = 0; i < suite->test_count; ++i) {
  if (filter && strncmp(test[i].name, filter, matchlen))
   continue;

  _clar.active_test = test[i].name;

  report = calloc(1, sizeof(struct clar_report));
  report->suite = _clar.active_suite;
  report->test = _clar.active_test;
  report->test_number = _clar.tests_ran;
  report->status = CL_TEST_NOTRUN;

  if (_clar.reports == ((void*)0))
   _clar.reports = report;

  if (_clar.last_report != ((void*)0))
   _clar.last_report->next = report;

  _clar.last_report = report;

  clar_run_test(&test[i], &suite->initialize, &suite->cleanup);

  if (_clar.exit_on_error && _clar.total_errors)
   return;
 }

 _clar.active_test = ((void*)0);
 CL_TRACE(CL_TRACE__SUITE_END);
}
