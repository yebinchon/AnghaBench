
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int dummy; } ;
struct child_process {char const** argv; int use_shell; int in; int out; int no_stdout; } ;
typedef int FILE ;


 struct child_process CHILD_PROCESS_INIT ;
 int SIGPIPE ;
 int SIG_IGN ;
 int credential_read (struct credential*,int *) ;
 int credential_write (struct credential*,int *) ;
 int fclose (int *) ;
 scalar_t__ finish_command (struct child_process*) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;
 scalar_t__ start_command (struct child_process*) ;
 int * xfdopen (int,char*) ;

__attribute__((used)) static int run_credential_helper(struct credential *c,
     const char *cmd,
     int want_output)
{
 struct child_process helper = CHILD_PROCESS_INIT;
 const char *argv[] = { ((void*)0), ((void*)0) };
 FILE *fp;

 argv[0] = cmd;
 helper.argv = argv;
 helper.use_shell = 1;
 helper.in = -1;
 if (want_output)
  helper.out = -1;
 else
  helper.no_stdout = 1;

 if (start_command(&helper) < 0)
  return -1;

 fp = xfdopen(helper.in, "w");
 sigchain_push(SIGPIPE, SIG_IGN);
 credential_write(c, fp);
 fclose(fp);
 sigchain_pop(SIGPIPE);

 if (want_output) {
  int r;
  fp = xfdopen(helper.out, "r");
  r = credential_read(c, fp);
  fclose(fp);
  if (r < 0) {
   finish_command(&helper);
   return -1;
  }
 }

 if (finish_command(&helper))
  return -1;
 return 0;
}
