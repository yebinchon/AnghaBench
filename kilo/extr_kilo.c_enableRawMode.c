
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termios {int c_iflag; int c_lflag; int* c_cc; int c_cflag; int c_oflag; } ;
struct TYPE_2__ {int rawmode; } ;


 int BRKINT ;
 int CS8 ;
 TYPE_1__ E ;
 int ECHO ;
 int ENOTTY ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int INPCK ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int STDIN_FILENO ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 int atexit (int ) ;
 int editorAtExit ;
 int errno ;
 int isatty (int ) ;
 struct termios orig_termios ;
 int tcgetattr (int,struct termios*) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;

int enableRawMode(int fd) {
    struct termios raw;

    if (E.rawmode) return 0;
    if (!isatty(STDIN_FILENO)) goto fatal;
    atexit(editorAtExit);
    if (tcgetattr(fd,&orig_termios) == -1) goto fatal;

    raw = orig_termios;


    raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);

    raw.c_oflag &= ~(OPOST);

    raw.c_cflag |= (CS8);


    raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);

    raw.c_cc[VMIN] = 0;
    raw.c_cc[VTIME] = 1;


    if (tcsetattr(fd,TCSAFLUSH,&raw) < 0) goto fatal;
    E.rawmode = 1;
    return 0;

fatal:
    errno = ENOTTY;
    return -1;
}
