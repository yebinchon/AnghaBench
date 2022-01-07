
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

__attribute__((used)) static bool devpts_pty_exists(int pty_num) {
    if (pty_num < 0 || pty_num > MAX_PTYS)
        return 0;
    lock(&ttys_lock);
    bool exists = pty_slave.ttys[pty_num] != ((void*)0);
    unlock(&ttys_lock);
    return exists;
}
