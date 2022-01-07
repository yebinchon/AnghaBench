
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDR_NO_RANDOMIZE ;
 int O_RDONLY ;
 int PR_SET_TSC ;
 int PR_TSC_SIGSEGV ;
 int PTRACE_TRACEME ;
 int SIGRTMIN ;
 int SIG_DFL ;
 int WIFSTOPPED (int) ;
 int exit (int) ;
 int fexecve (int ,char* const*,char* const*) ;
 int fork () ;
 int fprintf (int ,char*) ;
 int openat (int,char const*,int ) ;
 int perror (char*) ;
 int personality (int) ;
 int prctl (int ,int ) ;
 int ptrace (int ,int ,int *,int *) ;
 int signal (int,int ) ;
 int stderr ;
 int trycall (int ,char*) ;
 int wait (int*) ;

int start_tracee(int at, const char *path, char *const argv[], char *const envp[]) {

    int persona = personality(0xffffffff);
    persona |= ADDR_NO_RANDOMIZE;
    personality(persona);

    int pid = fork();
    if (pid < 0) {
        perror("fork");
        exit(1);
    }
    if (pid == 0) {


        trycall(prctl(PR_SET_TSC, PR_TSC_SIGSEGV), "rdtsc faulting");

        trycall(ptrace(PTRACE_TRACEME, 0, ((void*)0), ((void*)0)), "ptrace traceme");

        for (int sig = 0; sig < SIGRTMIN - 1; sig++)
            signal(sig, SIG_DFL);
        trycall(fexecve(openat(at, path, O_RDONLY), argv, envp), "execve");
    } else {

        int status;
        trycall(wait(&status), "wait");
        if (!WIFSTOPPED(status)) {
            fprintf(stderr, "child failed to start\n");
            exit(1);
        }
    }
    return pid;
}
