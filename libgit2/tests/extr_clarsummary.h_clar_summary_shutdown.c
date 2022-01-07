
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clar_summary {char* filename; int fp; } ;
struct clar_report {char* suite; struct clar_report* next; int test; struct clar_error* errors; } ;
struct clar_error {struct clar_error* next; int description; int error_msg; } ;
struct TYPE_2__ {int total_errors; int tests_ran; struct clar_report* reports; } ;


 TYPE_1__ _clar ;
 scalar_t__ clar_summary_close_tag (struct clar_summary*,char*,int) ;
 scalar_t__ clar_summary_failure (struct clar_summary*,char*,int ,int ) ;
 int clar_summary_testcase (struct clar_summary*,int ,char*,int ) ;
 scalar_t__ clar_summary_testsuite (struct clar_summary*,int ,char*,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ clar_summary_testsuites (struct clar_summary*) ;
 scalar_t__ fclose (int ) ;
 int free (struct clar_summary*) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int time (int *) ;

int clar_summary_shutdown(struct clar_summary *summary)
{
 struct clar_report *report;
 const char *last_suite = ((void*)0);

 if (clar_summary_testsuites(summary) < 0)
  goto on_error;

 report = _clar.reports;
 while (report != ((void*)0)) {
  struct clar_error *error = report->errors;

  if (last_suite == ((void*)0) || strcmp(last_suite, report->suite) != 0) {
   if (clar_summary_testsuite(summary, 0, report->suite, "",
       time(((void*)0)), 0, _clar.tests_ran, _clar.total_errors, 0) < 0)
    goto on_error;
  }

  last_suite = report->suite;

  clar_summary_testcase(summary, report->test, "what", 0);

  while (error != ((void*)0)) {
   if (clar_summary_failure(summary, "assert",
       error->error_msg, error->description) < 0)
    goto on_error;

   error = error->next;
  }

  if (clar_summary_close_tag(summary, "testcase", 2) < 0)
   goto on_error;

  report = report->next;

  if (!report || strcmp(last_suite, report->suite) != 0) {
   if (clar_summary_close_tag(summary, "testsuite", 1) < 0)
    goto on_error;
  }
 }

 if (clar_summary_close_tag(summary, "testsuites", 0) < 0 ||
     fclose(summary->fp) != 0)
  goto on_error;

 printf("written summary file to %s\n", summary->filename);

 free(summary);
 return 0;

on_error:
 fclose(summary->fp);
 free(summary);
 return -1;
}
