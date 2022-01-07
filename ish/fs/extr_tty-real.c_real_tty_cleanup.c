
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ num; int thread; } ;


 scalar_t__ ENOTTY ;
 int ERRNO_DIE (char*) ;
 scalar_t__ REAL_TTY_NUM ;
 int STDIN_FILENO ;
 int TCSANOW ;
 scalar_t__ errno ;
 int old_termios ;
 int pthread_cancel (int ) ;
 scalar_t__ tcsetattr (int ,int ,int *) ;

void real_tty_cleanup(struct tty *tty) {
    if (tty->num != REAL_TTY_NUM)
        return;
    if (tcsetattr(STDIN_FILENO, TCSANOW, &old_termios) < 0 && errno != ENOTTY)
        ERRNO_DIE("failed to reset terminal");
    pthread_cancel(tty->thread);
}
