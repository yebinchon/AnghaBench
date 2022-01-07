
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** ttys; } ;


 int MAX_PTYS ;
 int lock (int *) ;
 TYPE_1__ pty_slave ;
 int ttys_lock ;
 int unlock (int *) ;

__attribute__((used)) static int pty_reserve_next() {
    int pty_num;
    lock(&ttys_lock);
    for (pty_num = 0; pty_num < MAX_PTYS; pty_num++) {
        if (pty_slave.ttys[pty_num] == ((void*)0))
            break;
    }
    pty_slave.ttys[pty_num] = (void *) 1;
    unlock(&ttys_lock);
    return pty_num;
}
