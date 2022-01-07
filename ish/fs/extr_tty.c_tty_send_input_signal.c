
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lflags; unsigned char* cc; } ;
struct tty {scalar_t__ fg_group; scalar_t__ bufsize; TYPE_1__ termios; } ;
typedef int sigset_t_ ;


 int ISIG_ ;
 int NOFLSH_ ;
 int SIGINT_ ;
 int SIGQUIT_ ;
 int SIGTSTP_ ;
 size_t VINTR_ ;
 size_t VQUIT_ ;
 size_t VSUSP_ ;
 int sigset_add (int *,int) ;

__attribute__((used)) static bool tty_send_input_signal(struct tty *tty, char ch, sigset_t_ *queue) {
    if (!(tty->termios.lflags & ISIG_))
        return 0;
    unsigned char *cc = tty->termios.cc;
    int sig;
    if (ch == cc[VINTR_])
        sig = SIGINT_;
    else if (ch == cc[VQUIT_])
        sig = SIGQUIT_;
    else if (ch == cc[VSUSP_])
        sig = SIGTSTP_;
    else
        return 0;

    if (tty->fg_group != 0) {
        if (!(tty->termios.lflags & NOFLSH_))
            tty->bufsize = 0;
        sigset_add(queue, sig);
    }
    return 1;
}
