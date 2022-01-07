
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize_ {int dummy; } ;
struct tty {scalar_t__ fg_group; struct winsize_ winsize; } ;


 int SIGINFO_NIL ;
 int SIGWINCH_ ;
 int send_group_signal (scalar_t__,int ,int ) ;

void tty_set_winsize(struct tty *tty, struct winsize_ winsize) {
    tty->winsize = winsize;
    if (tty->fg_group != 0)
        send_group_signal(tty->fg_group, SIGWINCH_, SIGINFO_NIL);
}
