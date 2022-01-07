
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; } ;
struct TYPE_6__ {int async_wfd; TYPE_3__ async_io_watcher; } ;
typedef TYPE_1__ uv_loop_t ;
typedef int buf ;


 int O_RDWR ;
 int POLLIN ;
 int UV_ENOSYS ;
 int UV__F_NONBLOCK ;
 int snprintf (char*,int,char*,int) ;
 int uv__async_eventfd () ;
 int uv__async_io ;
 int uv__close (int) ;
 int uv__io_init (TYPE_3__*,int ,int) ;
 int uv__io_start (TYPE_1__*,TYPE_3__*,int ) ;
 int uv__make_pipe (int*,int ) ;
 int uv__open_cloexec (char*,int ) ;

__attribute__((used)) static int uv__async_start(uv_loop_t* loop) {
  int pipefd[2];
  int err;

  if (loop->async_io_watcher.fd != -1)
    return 0;

  err = uv__async_eventfd();
  if (err >= 0) {
    pipefd[0] = err;
    pipefd[1] = -1;
  }
  else if (err == UV_ENOSYS) {
    err = uv__make_pipe(pipefd, UV__F_NONBLOCK);





    if (err == 0) {
      char buf[32];
      int fd;

      snprintf(buf, sizeof(buf), "/proc/self/fd/%d", pipefd[0]);
      fd = uv__open_cloexec(buf, O_RDWR);
      if (fd >= 0) {
        uv__close(pipefd[0]);
        uv__close(pipefd[1]);
        pipefd[0] = fd;
        pipefd[1] = fd;
      }
    }

  }

  if (err < 0)
    return err;

  uv__io_init(&loop->async_io_watcher, uv__async_io, pipefd[0]);
  uv__io_start(loop, &loop->async_io_watcher, POLLIN);
  loop->async_wfd = pipefd[1];

  return 0;
}
