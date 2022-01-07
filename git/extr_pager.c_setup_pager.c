
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {int in; int env_array; } ;


 int argv_array_push (int *,char*) ;
 int atexit (int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 char* git_pager (scalar_t__) ;
 scalar_t__ isatty (int) ;
 TYPE_1__ pager_process ;
 int prepare_pager_args (TYPE_1__*,char const*) ;
 int setenv (char*,char*,int) ;
 int sigchain_push_common (int ) ;
 scalar_t__ start_command (TYPE_1__*) ;
 int term_columns () ;
 int wait_for_pager_atexit ;
 int wait_for_pager_signal ;
 int xsnprintf (char*,int,char*,int ) ;

void setup_pager(void)
{
 const char *pager = git_pager(isatty(1));

 if (!pager)
  return;






 {
  char buf[64];
  xsnprintf(buf, sizeof(buf), "%d", term_columns());
  setenv("COLUMNS", buf, 0);
 }

 setenv("GIT_PAGER_IN_USE", "true", 1);


 prepare_pager_args(&pager_process, pager);
 pager_process.in = -1;
 argv_array_push(&pager_process.env_array, "GIT_PAGER_IN_USE");
 if (start_command(&pager_process))
  return;


 dup2(pager_process.in, 1);
 if (isatty(2))
  dup2(pager_process.in, 2);
 close(pager_process.in);


 sigchain_push_common(wait_for_pager_signal);
 atexit(wait_for_pager_atexit);
}
