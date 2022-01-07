
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct testgroup_t {char* prefix; } ;
struct testcase_t {int name; } ;
typedef int si ;
typedef int pid_t ;
typedef int info ;
typedef enum outcome { ____Placeholder_outcome } outcome ;
typedef int buffer ;
struct TYPE_6__ {int cb; int hThread; int hProcess; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int CreateProcessA (char*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int FAIL ;
 int GetExitCodeProcess (int ,scalar_t__*) ;
 int INFINITE ;
 int LONGEST_TEST_NAME ;
 scalar_t__ MAGIC_EXITCODE ;
 int OK ;
 int SKIP ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int abort () ;
 int assert (int) ;
 int close (int) ;
 char* commandname ;
 int exit (int) ;
 int fork () ;
 int in_tinytest_main ;
 int memset (TYPE_1__*,int ,int) ;
 int opt_timeout ;
 scalar_t__ opt_verbosity ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 int printf (char*) ;
 scalar_t__ read (int,char*,int) ;
 int snprintf (char*,int,char*,char*,char*,char*,int ) ;
 int testcase_run_bare_ (struct testcase_t const*) ;
 char* verbosity_flag ;
 int vproc_transaction_begin (int ) ;
 int waitpid (int ,int*,int ) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static enum outcome
testcase_run_forked_(const struct testgroup_t *group,
       const struct testcase_t *testcase)
{
 int outcome_pipe[2];
 pid_t pid;
 (void)group;

 if (pipe(outcome_pipe))
  perror("opening pipe");

 if (opt_verbosity>0)
  printf("[forking] ");
 pid = fork();



 if (!pid) {

  int test_r, write_r;
  char b[1];
  close(outcome_pipe[0]);
  test_r = testcase_run_bare_(testcase);
  assert(0<=(int)test_r && (int)test_r<=2);
  b[0] = "NYS"[test_r];
  write_r = (int)write(outcome_pipe[1], b, 1);
  if (write_r != 1) {
   perror("write outcome to pipe");
   exit(1);
  }
  exit(0);
  return FAIL;
 } else {

  int status, r;
  char b[1];


  close(outcome_pipe[1]);
  r = (int)read(outcome_pipe[0], b, 1);
  if (r == 0) {
   printf("[Lost connection!] ");
   return 0;
  } else if (r != 1) {
   perror("read outcome from pipe");
  }
  waitpid(pid, &status, 0);
  close(outcome_pipe[0]);
  return b[0]=='Y' ? OK : (b[0]=='S' ? SKIP : FAIL);
 }

}
