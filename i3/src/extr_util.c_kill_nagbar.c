
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGTERM ;
 int kill (int,int ) ;
 int waitpid (int,int *,int ) ;
 int warn (char*) ;

void kill_nagbar(pid_t *nagbar_pid, bool wait_for_it) {
    if (*nagbar_pid == -1)
        return;

    if (kill(*nagbar_pid, SIGTERM) == -1)
        warn("kill(configerror_nagbar) failed");

    if (!wait_for_it)
        return;





    waitpid(*nagbar_pid, ((void*)0), 0);
}
