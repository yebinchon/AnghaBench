
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clar_report {struct clar_error* errors; } ;
struct clar_error {struct clar_error* next; } ;
struct TYPE_2__ {int last_report; } ;


 TYPE_1__ _clar ;
 int clar_print_error (int ,int ,struct clar_error*) ;

__attribute__((used)) static void
clar_report_errors(struct clar_report *report)
{
 struct clar_error *error;
 int i = 1;

 for (error = report->errors; error; error = error->next)
  clar_print_error(i++, _clar.last_report, error);
}
