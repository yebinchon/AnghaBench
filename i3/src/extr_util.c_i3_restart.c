
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG (char*,int ) ;
 int SHUTDOWN_REASON_RESTART ;
 int * add_argument (int *,char*,char*,char*) ;
 int command_error_nagbar_pid ;
 int config_error_nagbar_pid ;
 int execvp (int ,int *) ;
 scalar_t__ get_debug_logging () ;
 int ipc_shutdown (int ,int) ;
 int kill_nagbar (int *,int) ;
 int restore_geometry () ;
 int * start_argv ;
 char* store_restart_layout () ;

void i3_restart(bool forget_layout) {
    char *restart_filename = forget_layout ? ((void*)0) : store_restart_layout();

    kill_nagbar(&config_error_nagbar_pid, 1);
    kill_nagbar(&command_error_nagbar_pid, 1);

    restore_geometry();

    ipc_shutdown(SHUTDOWN_REASON_RESTART, -1);

    LOG("restarting \"%s\"...\n", start_argv[0]);

    start_argv = add_argument(start_argv, "-a", ((void*)0), ((void*)0));


    if (get_debug_logging()) {
        start_argv = add_argument(start_argv, "-d", "all", ((void*)0));
    }


    if (restart_filename != ((void*)0)) {
        start_argv = add_argument(start_argv, "--restart", restart_filename, "-r");
    }

    execvp(start_argv[0], start_argv);


}
