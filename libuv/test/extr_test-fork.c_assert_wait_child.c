
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ASSERT (int) ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 int perror (char*) ;
 int printf (char*,int,int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void assert_wait_child(pid_t child_pid) {
  pid_t waited_pid;
  int child_stat;

  waited_pid = waitpid(child_pid, &child_stat, 0);
  printf("Waited pid is %d with status %d\n", waited_pid, child_stat);
  if (waited_pid == -1) {
    perror("Failed to wait");
  }
  ASSERT(child_pid == waited_pid);
  ASSERT(WIFEXITED(child_stat));
  ASSERT(!WIFSIGNALED(child_stat));
  ASSERT(0 == WEXITSTATUS(child_stat));
}
