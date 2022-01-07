
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* message; } ;
typedef TYPE_1__ git_error ;


 int clar__assert (int ,char const*,int,char const*,char*,int) ;
 TYPE_1__* git_error_last () ;
 int p_snprintf (char*,int,char*,...) ;

void cl_git_report_failure(
 int error, int expected, const char *file, int line, const char *fncall)
{
 char msg[4096];
 const git_error *last = git_error_last();

 if (expected)
  p_snprintf(msg, 4096, "error %d (expected %d) - %s",
   error, expected, last ? last->message : "<no message>");
 else if (error || last)
  p_snprintf(msg, 4096, "error %d - %s",
   error, last ? last->message : "<no message>");
 else
  p_snprintf(msg, 4096, "no error, expected non-zero return");

 clar__assert(0, file, line, fncall, msg, 1);
}
