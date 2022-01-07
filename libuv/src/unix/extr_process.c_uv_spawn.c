
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int pid; int exit_cb; int queue; int status; } ;
typedef TYPE_1__ uv_process_t ;
struct TYPE_14__ {int flags; int stdio_count; TYPE_7__* stdio; int exit_cb; int * file; } ;
typedef TYPE_2__ uv_process_options_t ;
struct TYPE_15__ {int process_handles; int cloexec_lock; int child_watcher; } ;
typedef TYPE_3__ uv_loop_t ;
typedef int uv_handle_t ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int exec_errorno ;
struct TYPE_16__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int**) ;
 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 int QUEUE_INIT (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int SIGCHLD ;
 int UV_ENOMEM ;
 int UV_ENOSYS ;
 int UV_INHERIT_FD ;
 int UV_INHERIT_STREAM ;
 int UV_PROCESS ;
 int UV_PROCESS_DETACHED ;
 int UV_PROCESS_SETGID ;
 int UV_PROCESS_SETUID ;
 int UV_PROCESS_WINDOWS_HIDE ;
 int UV_PROCESS_WINDOWS_HIDE_CONSOLE ;
 int UV_PROCESS_WINDOWS_HIDE_GUI ;
 int UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS ;
 int UV__ERR (scalar_t__) ;
 int abort () ;
 int assert (int) ;
 scalar_t__ errno ;
 int fork () ;
 int read (int,int*,int) ;
 int uv__chld ;
 int uv__close (int) ;
 int uv__close_nocheckstdio (int) ;
 int uv__free (int**) ;
 int uv__handle_init (TYPE_3__*,int *,int ) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__make_pipe (int*,int ) ;
 int** uv__malloc (int) ;
 int uv__process_child_init (TYPE_2__ const*,int,int**,int) ;
 int uv__process_close_stream (TYPE_7__*) ;
 int uv__process_init_stdio (TYPE_7__*,int*) ;
 int uv__process_open_stream (TYPE_7__*,int*) ;
 int uv_rwlock_wrlock (int *) ;
 int uv_rwlock_wrunlock (int *) ;
 int uv_signal_start (int *,int ,int ) ;
 int waitpid (int,int*,int ) ;

int uv_spawn(uv_loop_t* loop,
             uv_process_t* process,
             const uv_process_options_t* options) {




  int signal_pipe[2] = { -1, -1 };
  int pipes_storage[8][2];
  int (*pipes)[2];
  int stdio_count;
  ssize_t r;
  pid_t pid;
  int err;
  int exec_errorno;
  int i;
  int status;

  assert(options->file != ((void*)0));
  assert(!(options->flags & ~(UV_PROCESS_DETACHED |
                              UV_PROCESS_SETGID |
                              UV_PROCESS_SETUID |
                              UV_PROCESS_WINDOWS_HIDE |
                              UV_PROCESS_WINDOWS_HIDE_CONSOLE |
                              UV_PROCESS_WINDOWS_HIDE_GUI |
                              UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS)));

  uv__handle_init(loop, (uv_handle_t*)process, UV_PROCESS);
  QUEUE_INIT(&process->queue);

  stdio_count = options->stdio_count;
  if (stdio_count < 3)
    stdio_count = 3;

  err = UV_ENOMEM;
  pipes = pipes_storage;
  if (stdio_count > (int) ARRAY_SIZE(pipes_storage))
    pipes = uv__malloc(stdio_count * sizeof(*pipes));

  if (pipes == ((void*)0))
    goto error;

  for (i = 0; i < stdio_count; i++) {
    pipes[i][0] = -1;
    pipes[i][1] = -1;
  }

  for (i = 0; i < options->stdio_count; i++) {
    err = uv__process_init_stdio(options->stdio + i, pipes[i]);
    if (err)
      goto error;
  }
  err = uv__make_pipe(signal_pipe, 0);
  if (err)
    goto error;

  uv_signal_start(&loop->child_watcher, uv__chld, SIGCHLD);


  uv_rwlock_wrlock(&loop->cloexec_lock);
  pid = fork();

  if (pid == -1) {
    err = UV__ERR(errno);
    uv_rwlock_wrunlock(&loop->cloexec_lock);
    uv__close(signal_pipe[0]);
    uv__close(signal_pipe[1]);
    goto error;
  }

  if (pid == 0) {
    uv__process_child_init(options, stdio_count, pipes, signal_pipe[1]);
    abort();
  }


  uv_rwlock_wrunlock(&loop->cloexec_lock);
  uv__close(signal_pipe[1]);

  process->status = 0;
  exec_errorno = 0;
  do
    r = read(signal_pipe[0], &exec_errorno, sizeof(exec_errorno));
  while (r == -1 && errno == EINTR);

  if (r == 0)
    ;
  else if (r == sizeof(exec_errorno)) {
    do
      err = waitpid(pid, &status, 0);
    while (err == -1 && errno == EINTR);
    assert(err == pid);
  } else if (r == -1 && errno == EPIPE) {
    do
      err = waitpid(pid, &status, 0);
    while (err == -1 && errno == EINTR);
    assert(err == pid);
  } else
    abort();

  uv__close_nocheckstdio(signal_pipe[0]);

  for (i = 0; i < options->stdio_count; i++) {
    err = uv__process_open_stream(options->stdio + i, pipes[i]);
    if (err == 0)
      continue;

    while (i--)
      uv__process_close_stream(options->stdio + i);

    goto error;
  }


  if (exec_errorno == 0) {
    QUEUE_INSERT_TAIL(&loop->process_handles, &process->queue);
    uv__handle_start(process);
  }

  process->pid = pid;
  process->exit_cb = options->exit_cb;

  if (pipes != pipes_storage)
    uv__free(pipes);

  return exec_errorno;

error:
  if (pipes != ((void*)0)) {
    for (i = 0; i < stdio_count; i++) {
      if (i < options->stdio_count)
        if (options->stdio[i].flags & (UV_INHERIT_FD | UV_INHERIT_STREAM))
          continue;
      if (pipes[i][0] != -1)
        uv__close_nocheckstdio(pipes[i][0]);
      if (pipes[i][1] != -1)
        uv__close_nocheckstdio(pipes[i][1]);
    }

    if (pipes != pipes_storage)
      uv__free(pipes);
  }

  return err;

}
