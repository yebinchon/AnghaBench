
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ fg_group; } ;
typedef scalar_t__ pid_t_ ;


 int _EINTR ;
 int _EIO ;
 int try_self_signal (int) ;
 int tty_is_current (struct tty*) ;

__attribute__((used)) static int tty_signal_if_background(struct tty *tty, pid_t_ current_pgid, int sig) {


    if (!tty_is_current(tty))
        return 0;

    if (tty->fg_group == 0 || current_pgid == tty->fg_group)
        return 0;

    if (!try_self_signal(sig))
        return _EIO;
    else
        return _EINTR;
}
