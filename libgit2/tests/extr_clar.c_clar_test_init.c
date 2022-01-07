
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_summary; int * summary_filename; int summary; } ;


 TYPE_1__ _clar ;
 scalar_t__ _clar_callback_count ;
 scalar_t__ _clar_suite_count ;
 int clar_parse_args (int,char**) ;
 int clar_print_init (int,int,char*) ;
 int clar_print_onabort (char*) ;
 scalar_t__ clar_sandbox () ;
 int clar_summary_init (int *) ;
 int exit (int) ;
 int * getenv (char*) ;
 int * strdup (int *) ;

void
clar_test_init(int argc, char **argv)
{
 clar_print_init(
  (int)_clar_callback_count,
  (int)_clar_suite_count,
  ""
 );

 if ((_clar.summary_filename = getenv("CLAR_SUMMARY")) != ((void*)0)) {
  _clar.write_summary = 1;
  _clar.summary_filename = strdup(_clar.summary_filename);
 }

 if (argc > 1)
  clar_parse_args(argc, argv);

 if (_clar.write_summary &&
     !(_clar.summary = clar_summary_init(_clar.summary_filename))) {
  clar_print_onabort("Failed to open the summary file\n");
  exit(-1);
 }

 if (clar_sandbox() < 0) {
  clar_print_onabort("Failed to sandbox the test runner.\n");
  exit(-1);
 }
}
