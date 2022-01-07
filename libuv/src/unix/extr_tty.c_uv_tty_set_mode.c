
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct termios {int c_iflag; int c_lflag; int* c_cc; int c_cflag; int c_oflag; } ;
struct TYPE_4__ {int mode; struct termios orig_termios; } ;
typedef TYPE_1__ uv_tty_t ;
typedef int uv_tty_mode_t ;


 int BRKINT ;
 int CS8 ;
 int ECHO ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int INPCK ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int ONLCR ;
 int TCSADRAIN ;



 int UV__ERR (int ) ;
 size_t VMIN ;
 size_t VTIME ;
 int errno ;
 struct termios orig_termios ;
 int orig_termios_fd ;
 scalar_t__ tcgetattr (int,struct termios*) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;
 int termios_spinlock ;
 int uv__stream_fd (TYPE_1__*) ;
 int uv__tty_make_raw (struct termios*) ;
 int uv_spinlock_lock (int *) ;
 int uv_spinlock_unlock (int *) ;

int uv_tty_set_mode(uv_tty_t* tty, uv_tty_mode_t mode) {
  struct termios tmp;
  int fd;

  if (tty->mode == (int) mode)
    return 0;

  fd = uv__stream_fd(tty);
  if (tty->mode == 129 && mode != 129) {
    if (tcgetattr(fd, &tty->orig_termios))
      return UV__ERR(errno);


    uv_spinlock_lock(&termios_spinlock);
    if (orig_termios_fd == -1) {
      orig_termios = tty->orig_termios;
      orig_termios_fd = fd;
    }
    uv_spinlock_unlock(&termios_spinlock);
  }

  tmp = tty->orig_termios;
  switch (mode) {
    case 129:
      break;
    case 128:
      tmp.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
      tmp.c_oflag |= (ONLCR);
      tmp.c_cflag |= (CS8);
      tmp.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
      tmp.c_cc[VMIN] = 1;
      tmp.c_cc[VTIME] = 0;
      break;
    case 130:
      uv__tty_make_raw(&tmp);
      break;
  }


  if (tcsetattr(fd, TCSADRAIN, &tmp))
    return UV__ERR(errno);

  tty->mode = mode;
  return 0;
}
