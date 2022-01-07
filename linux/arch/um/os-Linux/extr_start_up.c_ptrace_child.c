
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_TRACEME ;
 int SIGKILL ;
 int SIGSTOP ;
 int SIGWINCH ;
 scalar_t__ change_sig (int ,int ) ;
 int exit (int) ;
 int getppid () ;
 int kill (int,int ) ;
 int os_getpid () ;
 int perror (char*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static void ptrace_child(void)
{
 int ret;

 int pid = os_getpid(), ppid = getppid();
 int sc_result;

 if (change_sig(SIGWINCH, 0) < 0 ||
     ptrace(PTRACE_TRACEME, 0, 0, 0) < 0) {
  perror("ptrace");
  kill(pid, SIGKILL);
 }
 kill(pid, SIGSTOP);





 sc_result = os_getpid();

 if (sc_result == pid)

  ret = 1;
 else if (sc_result == ppid)




  ret = 0;
 else




  ret = 2;

 exit(ret);
}
