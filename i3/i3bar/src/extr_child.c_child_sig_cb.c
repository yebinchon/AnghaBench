
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ev_loop {int dummy; } ;
struct TYPE_4__ {int rstatus; } ;
typedef TYPE_1__ ev_child ;
struct TYPE_5__ {int pid; } ;


 int ELOG (char*,int ,int) ;
 int WEXITSTATUS (int ) ;
 TYPE_3__ child ;
 int cleanup () ;
 int draw_bars (int) ;
 int set_statusline_error (char*,int) ;

__attribute__((used)) static void child_sig_cb(struct ev_loop *loop, ev_child *watcher, int revents) {
    int exit_status = WEXITSTATUS(watcher->rstatus);

    ELOG("Child (pid: %d) unexpectedly exited with status %d\n",
         child.pid,
         exit_status);



    if (exit_status == 126)
        set_statusline_error("status_command is not executable (exit %d)", exit_status);
    else if (exit_status == 127)
        set_statusline_error("status_command not found or is missing a library dependency (exit %d)", exit_status);
    else
        set_statusline_error("status_command process exited unexpectedly (exit %d)", exit_status);

    cleanup();
    draw_bars(0);
}
