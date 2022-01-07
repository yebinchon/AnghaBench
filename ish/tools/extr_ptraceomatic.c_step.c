
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_SINGLESTEP ;
 int SIGTRAP ;
 scalar_t__ WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int printk (char*,int) ;
 int ptrace (int ,int,int *,int) ;
 int trycall (int ,char*) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static inline int step(int pid) {
    trycall(ptrace(PTRACE_SINGLESTEP, pid, ((void*)0), 0), "ptrace step");
    int status;
    trycall(waitpid(pid, &status, 0), "wait step");
    if (WIFSTOPPED(status) && WSTOPSIG(status) != SIGTRAP) {
        int signal = WSTOPSIG(status);
        printk("child received signal %d\n", signal);

        trycall(ptrace(PTRACE_SINGLESTEP, pid, ((void*)0), signal), "ptrace step");
        trycall(waitpid(pid, &status, 0), "wait step");
        return 1;
    }
    return 0;
}
