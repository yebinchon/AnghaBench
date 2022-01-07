
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cont_signal; int stopped; int pid; } ;


 TYPE_1__ child ;
 int killpg (int ,scalar_t__) ;

void cont_child(void) {
    if (child.cont_signal > 0 && child.stopped) {
        child.stopped = 0;
        killpg(child.pid, child.cont_signal);
    }
}
