
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid; scalar_t__ cont_signal; scalar_t__ stopped; } ;


 scalar_t__ SIGTERM ;
 TYPE_1__ child ;
 int killpg (scalar_t__,scalar_t__) ;

void kill_child_at_exit(void) {
    if (child.pid > 0) {
        if (child.cont_signal > 0 && child.stopped)
            killpg(child.pid, child.cont_signal);
        killpg(child.pid, SIGTERM);
    }
}
