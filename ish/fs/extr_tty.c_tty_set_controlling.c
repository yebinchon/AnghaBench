
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int fg_group; int session; int refcount; } ;
struct tgroup {int lock; int pgid; int sid; struct tty* tty; } ;


 int lock (int *) ;
 int unlock (int *) ;

__attribute__((used)) static void tty_set_controlling(struct tgroup *group, struct tty *tty) {
    lock(&group->lock);
    if (group->tty == ((void*)0)) {
        tty->refcount++;
        group->tty = tty;
        tty->session = group->sid;
        tty->fg_group = group->pgid;
    }
    unlock(&group->lock);
}
