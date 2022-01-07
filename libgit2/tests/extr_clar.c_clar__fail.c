
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clar_error {char const* file; size_t line_number; char const* error_msg; int description; struct clar_error* next; } ;
struct TYPE_4__ {TYPE_1__* last_report; int total_errors; } ;
struct TYPE_3__ {int status; struct clar_error* last_error; struct clar_error* errors; } ;


 int CL_TEST_FAILURE ;
 TYPE_2__ _clar ;
 int abort_test () ;
 struct clar_error* calloc (int,int) ;
 int strdup (char const*) ;

void clar__fail(
 const char *file,
 size_t line,
 const char *error_msg,
 const char *description,
 int should_abort)
{
 struct clar_error *error = calloc(1, sizeof(struct clar_error));

 if (_clar.last_report->errors == ((void*)0))
  _clar.last_report->errors = error;

 if (_clar.last_report->last_error != ((void*)0))
  _clar.last_report->last_error->next = error;

 _clar.last_report->last_error = error;

 error->file = file;
 error->line_number = line;
 error->error_msg = error_msg;

 if (description != ((void*)0))
  error->description = strdup(description);

 _clar.total_errors++;
 _clar.last_report->status = CL_TEST_FAILURE;

 if (should_abort)
  abort_test();
}
