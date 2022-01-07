
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WTERMSIG (int) ;
 int test_fail (char*,...) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
wait_for_child_exit(int pid) {
 int status;
 while (1) {
  if (waitpid(pid, &status, 0) == -1) {
   test_fail("Unexpected waitpid() failure.");
  }
  if (WIFSIGNALED(status)) {
   test_fail("Unexpected child termination due to "
       "signal %d", WTERMSIG(status));
   break;
  }
  if (WIFEXITED(status)) {
   if (WEXITSTATUS(status) != 0) {
    test_fail("Unexpected child exit value %d",
        WEXITSTATUS(status));
   }
   break;
  }
 }
}
