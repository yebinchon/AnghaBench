
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int produced; } ;


 int notify (int *) ;
 int tty_poll_wakeup (struct tty*) ;

__attribute__((used)) static void tty_input_wakeup(struct tty *tty) {
    notify(&tty->produced);
    tty_poll_wakeup(tty);
}
