
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winsize {int ws_ypixel; int ws_xpixel; int ws_row; int ws_col; } ;
struct TYPE_2__ {int ypixel; int xpixel; int row; int col; } ;
struct tty {scalar_t__ num; int thread; int termios; TYPE_1__ winsize; } ;
struct termios {int c_oflag; } ;


 scalar_t__ ENOTTY ;
 int ERRNO_DIE (char*) ;
 int ONLCR ;
 int OPOST ;
 scalar_t__ REAL_TTY_NUM ;
 int STDIN_FILENO ;
 int TCSANOW ;
 int TIOCGWINSZ ;
 int _EIO ;
 int cfmakeraw (struct termios*) ;
 scalar_t__ errno ;
 int errno_map () ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;
 struct termios old_termios ;
 scalar_t__ pthread_create (int *,int *,void* (*) (void*),struct tty*) ;
 int pthread_detach (int ) ;
 scalar_t__ real_tty_read_thread ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 scalar_t__ tcsetattr (int ,int ,struct termios*) ;
 int termios_from_real (struct termios) ;

int real_tty_init(struct tty *tty) {
    if (tty->num != REAL_TTY_NUM)
        return 0;

    struct winsize winsz;
    if (ioctl(STDIN_FILENO, TIOCGWINSZ, &winsz) < 0) {
        if (errno == ENOTTY)
            goto notty;
        return errno_map();
    }
    tty->winsize.col = winsz.ws_col;
    tty->winsize.row = winsz.ws_row;
    tty->winsize.xpixel = winsz.ws_xpixel;
    tty->winsize.ypixel = winsz.ws_ypixel;

    struct termios termios;
    if (tcgetattr(STDIN_FILENO, &termios) < 0)
        return errno_map();
    tty->termios = termios_from_real(termios);

    old_termios = termios;
    cfmakeraw(&termios);



    if (tcsetattr(STDIN_FILENO, TCSANOW, &termios) < 0)
        ERRNO_DIE("failed to set terminal to raw mode");
notty:

    if (pthread_create(&tty->thread, ((void*)0), (void *(*)(void *)) real_tty_read_thread, tty) < 0)

        return _EIO;
    pthread_detach(tty->thread);
    return 0;
}
