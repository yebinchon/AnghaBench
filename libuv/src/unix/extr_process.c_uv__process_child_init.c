
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int args; int file; int * env; int uid; int gid; int * cwd; } ;
typedef TYPE_1__ uv_process_options_t ;
typedef int sigset_t ;


 int F_DUPFD ;
 int O_RDONLY ;
 int O_RDWR ;
 int SAVE_ERRNO (int ) ;
 int SIGKILL ;
 int SIGKILLTHR ;
 int SIGSTOP ;
 int SIG_DFL ;
 scalar_t__ SIG_ERR ;
 int SIG_SETMASK ;
 int UV_PROCESS_DETACHED ;
 int UV_PROCESS_SETGID ;
 int UV_PROCESS_SETUID ;
 int UV__ERR (int) ;
 int _exit (int) ;
 scalar_t__ chdir (int *) ;
 int dup2 (int,int) ;
 int * environ ;
 int errno ;
 int execvp (int ,int ) ;
 int fcntl (int,int ,int) ;
 int open (char*,int ) ;
 int pthread_sigmask (int ,int *,int *) ;
 scalar_t__ setgid (int ) ;
 int setgroups (int ,int *) ;
 int setsid () ;
 scalar_t__ setuid (int ) ;
 int sigemptyset (int *) ;
 scalar_t__ signal (int,int ) ;
 int uv__cloexec_fcntl (int,int ) ;
 int uv__close (int) ;
 int uv__nonblock_fcntl (int,int ) ;
 int uv__write_int (int,int ) ;

__attribute__((used)) static void uv__process_child_init(const uv_process_options_t* options,
                                   int stdio_count,
                                   int (*pipes)[2],
                                   int error_fd) {
  sigset_t set;
  int close_fd;
  int use_fd;
  int err;
  int fd;
  int n;

  if (options->flags & UV_PROCESS_DETACHED)
    setsid();





  for (fd = 0; fd < stdio_count; fd++) {
    use_fd = pipes[fd][1];
    if (use_fd < 0 || use_fd >= fd)
      continue;
    pipes[fd][1] = fcntl(use_fd, F_DUPFD, stdio_count);
    if (pipes[fd][1] == -1) {
      uv__write_int(error_fd, UV__ERR(errno));
      _exit(127);
    }
  }

  for (fd = 0; fd < stdio_count; fd++) {
    close_fd = pipes[fd][0];
    use_fd = pipes[fd][1];

    if (use_fd < 0) {
      if (fd >= 3)
        continue;
      else {



        use_fd = open("/dev/null", fd == 0 ? O_RDONLY : O_RDWR);
        close_fd = use_fd;

        if (use_fd < 0) {
          uv__write_int(error_fd, UV__ERR(errno));
          _exit(127);
        }
      }
    }

    if (fd == use_fd)
      uv__cloexec_fcntl(use_fd, 0);
    else
      fd = dup2(use_fd, fd);

    if (fd == -1) {
      uv__write_int(error_fd, UV__ERR(errno));
      _exit(127);
    }

    if (fd <= 2)
      uv__nonblock_fcntl(fd, 0);

    if (close_fd >= stdio_count)
      uv__close(close_fd);
  }

  for (fd = 0; fd < stdio_count; fd++) {
    use_fd = pipes[fd][1];

    if (use_fd >= stdio_count)
      uv__close(use_fd);
  }

  if (options->cwd != ((void*)0) && chdir(options->cwd)) {
    uv__write_int(error_fd, UV__ERR(errno));
    _exit(127);
  }

  if (options->flags & (UV_PROCESS_SETUID | UV_PROCESS_SETGID)) {







    SAVE_ERRNO(setgroups(0, ((void*)0)));
  }

  if ((options->flags & UV_PROCESS_SETGID) && setgid(options->gid)) {
    uv__write_int(error_fd, UV__ERR(errno));
    _exit(127);
  }

  if ((options->flags & UV_PROCESS_SETUID) && setuid(options->uid)) {
    uv__write_int(error_fd, UV__ERR(errno));
    _exit(127);
  }

  if (options->env != ((void*)0)) {
    environ = options->env;
  }






  for (n = 1; n < 32; n += 1) {
    if (n == SIGKILL || n == SIGSTOP)
      continue;






    if (SIG_ERR != signal(n, SIG_DFL))
      continue;

    uv__write_int(error_fd, UV__ERR(errno));
    _exit(127);
  }


  sigemptyset(&set);
  err = pthread_sigmask(SIG_SETMASK, &set, ((void*)0));

  if (err != 0) {
    uv__write_int(error_fd, UV__ERR(err));
    _exit(127);
  }

  execvp(options->file, options->args);
  uv__write_int(error_fd, UV__ERR(errno));
  _exit(127);
}
