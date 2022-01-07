
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_7__ {int* data; } ;
typedef TYPE_1__ ev_cleanup ;
struct TYPE_8__ {int* data; } ;
typedef TYPE_2__ ev_child ;


 int DLOG (char*,int) ;
 int ev_child_init (TYPE_2__*,int *,int,int ) ;
 int ev_child_start (int ,TYPE_2__*) ;
 int ev_cleanup_init (TYPE_1__*,int ) ;
 int ev_cleanup_start (int ,TYPE_1__*) ;
 int exec_i3_utility (char*,char**) ;
 int fork () ;
 int main_loop ;
 int nagbar_cleanup ;
 int nagbar_exited ;
 void* smalloc (int) ;
 int warn (char*) ;

void start_nagbar(pid_t *nagbar_pid, char *argv[]) {
    if (*nagbar_pid != -1) {
        DLOG("i3-nagbar already running (PID %d), not starting again.\n", *nagbar_pid);
        return;
    }

    *nagbar_pid = fork();
    if (*nagbar_pid == -1) {
        warn("Could not fork()");
        return;
    }


    if (*nagbar_pid == 0)
        exec_i3_utility("i3-nagbar", argv);

    DLOG("Starting i3-nagbar with PID %d\n", *nagbar_pid);



    ev_child *child = smalloc(sizeof(ev_child));
    ev_child_init(child, &nagbar_exited, *nagbar_pid, 0);
    child->data = nagbar_pid;
    ev_child_start(main_loop, child);



    ev_cleanup *cleanup = smalloc(sizeof(ev_cleanup));
    ev_cleanup_init(cleanup, nagbar_cleanup);
    cleanup->data = nagbar_pid;
    ev_cleanup_start(main_loop, cleanup);
}
