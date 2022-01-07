
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int handle_queue; } ;
typedef TYPE_1__ uv_tty_t ;
typedef int uv_stream_t ;
typedef int uv_loop_t ;
typedef scalar_t__ uv_handle_type ;
typedef int path ;


 scalar_t__ EINTR ;
 int F_GETFL ;
 int F_SETFL ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int QUEUE_REMOVE (int *) ;
 int UV_EINVAL ;
 scalar_t__ UV_FILE ;
 int UV_HANDLE_BLOCKING_WRITES ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 scalar_t__ UV_TTY ;
 int UV_TTY_MODE_NORMAL ;
 scalar_t__ UV_UNKNOWN_HANDLE ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int fcntl (int,int ,...) ;
 scalar_t__ ttyname_r (int,char*,int) ;
 int uv__close (int) ;
 int uv__dup2_cloexec (int,int) ;
 int uv__nonblock (int,int) ;
 int uv__open_cloexec (char*,int) ;
 int uv__stream_init (int *,int *,scalar_t__) ;
 int uv__stream_open (int *,int,int) ;
 int uv__stream_try_select (int *,int*) ;
 scalar_t__ uv__tty_is_slave (int) ;
 scalar_t__ uv_guess_handle (int) ;

int uv_tty_init(uv_loop_t* loop, uv_tty_t* tty, int fd, int unused) {
  uv_handle_type type;
  int flags;
  int newfd;
  int r;
  int saved_flags;
  int mode;
  char path[256];
  (void)unused;





  type = uv_guess_handle(fd);
  if (type == UV_FILE || type == UV_UNKNOWN_HANDLE)
    return UV_EINVAL;

  flags = 0;
  newfd = -1;


  do
    saved_flags = fcntl(fd, F_GETFL);
  while (saved_flags == -1 && errno == EINTR);

  if (saved_flags == -1)
    return UV__ERR(errno);
  mode = saved_flags & O_ACCMODE;
  if (type == UV_TTY) {





    if (uv__tty_is_slave(fd) && ttyname_r(fd, path, sizeof(path)) == 0)
      r = uv__open_cloexec(path, mode);
    else
      r = -1;

    if (r < 0) {

      if (mode != O_RDONLY)
        flags |= UV_HANDLE_BLOCKING_WRITES;
      goto skip;
    }

    newfd = r;

    r = uv__dup2_cloexec(newfd, fd);
    if (r < 0 && r != UV_EINVAL) {




      uv__close(newfd);
      return r;
    }

    fd = newfd;
  }

skip:
  uv__stream_init(loop, (uv_stream_t*) tty, UV_TTY);





  if (!(flags & UV_HANDLE_BLOCKING_WRITES))
    uv__nonblock(fd, 1);
  if (mode != O_WRONLY)
    flags |= UV_HANDLE_READABLE;
  if (mode != O_RDONLY)
    flags |= UV_HANDLE_WRITABLE;

  uv__stream_open((uv_stream_t*) tty, fd, flags);
  tty->mode = UV_TTY_MODE_NORMAL;

  return 0;
}
