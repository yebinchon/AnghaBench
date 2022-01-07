
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;


 int ELOG (char*) ;
 int SA_NODEFER ;
 int SA_RESETHAND ;
 int SA_SIGINFO ;
 int SIGABRT ;
 int SIGFPE ;
 int SIGILL ;
 int SIGQUIT ;
 int SIGSEGV ;
 int handle_signal ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

void setup_signal_handler(void) {
    struct sigaction action;

    action.sa_sigaction = handle_signal;
    action.sa_flags = SA_NODEFER | SA_RESETHAND | SA_SIGINFO;
    sigemptyset(&action.sa_mask);


    if (sigaction(SIGQUIT, &action, ((void*)0)) == -1 ||
        sigaction(SIGILL, &action, ((void*)0)) == -1 ||
        sigaction(SIGABRT, &action, ((void*)0)) == -1 ||
        sigaction(SIGFPE, &action, ((void*)0)) == -1 ||
        sigaction(SIGSEGV, &action, ((void*)0)) == -1)
        ELOG("Could not setup signal handler.\n");
}
