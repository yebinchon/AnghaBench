
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tty_t ;
struct winsize {int ws_col; int ws_row; } ;


 scalar_t__ EINTR ;
 int TIOCGWINSZ ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int ioctl (int ,int ,struct winsize*) ;
 int uv__stream_fd (int *) ;

int uv_tty_get_winsize(uv_tty_t* tty, int* width, int* height) {
  struct winsize ws;
  int err;

  do
    err = ioctl(uv__stream_fd(tty), TIOCGWINSZ, &ws);
  while (err == -1 && errno == EINTR);

  if (err == -1)
    return UV__ERR(errno);

  *width = ws.ws_col;
  *height = ws.ws_row;

  return 0;
}
