
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int hung_up; } ;


 int tty_poll_wakeup (struct tty*) ;

void tty_hangup(struct tty *tty) {
    tty->hung_up = 1;
    tty_poll_wakeup(tty);
}
