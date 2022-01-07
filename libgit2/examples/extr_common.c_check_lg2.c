
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* message; } ;
typedef TYPE_1__ git_error ;


 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 TYPE_1__* git_error_last () ;
 int stderr ;

void check_lg2(int error, const char *message, const char *extra)
{
 const git_error *lg2err;
 const char *lg2msg = "", *lg2spacer = "";

 if (!error)
  return;

 if ((lg2err = git_error_last()) != ((void*)0) && lg2err->message != ((void*)0)) {
  lg2msg = lg2err->message;
  lg2spacer = " - ";
 }

 if (extra)
  fprintf(stderr, "%s '%s' [%d]%s%s\n",
   message, extra, error, lg2spacer, lg2msg);
 else
  fprintf(stderr, "%s [%d]%s%s\n",
   message, error, lg2spacer, lg2msg);

 exit(1);
}
