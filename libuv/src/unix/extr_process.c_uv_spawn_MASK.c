#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int pid; int /*<<< orphan*/  exit_cb; int /*<<< orphan*/  queue; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ uv_process_t ;
struct TYPE_14__ {int flags; int stdio_count; TYPE_7__* stdio; int /*<<< orphan*/  exit_cb; int /*<<< orphan*/ * file; } ;
typedef  TYPE_2__ uv_process_options_t ;
struct TYPE_15__ {int /*<<< orphan*/  process_handles; int /*<<< orphan*/  cloexec_lock; int /*<<< orphan*/  child_watcher; } ;
typedef  TYPE_3__ uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int ssize_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  exec_errorno ;
struct TYPE_16__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int**) ; 
 scalar_t__ EINTR ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int UV_ENOMEM ; 
 int UV_ENOSYS ; 
 int UV_INHERIT_FD ; 
 int UV_INHERIT_STREAM ; 
 int /*<<< orphan*/  UV_PROCESS ; 
 int UV_PROCESS_DETACHED ; 
 int UV_PROCESS_SETGID ; 
 int UV_PROCESS_SETUID ; 
 int UV_PROCESS_WINDOWS_HIDE ; 
 int UV_PROCESS_WINDOWS_HIDE_CONSOLE ; 
 int UV_PROCESS_WINDOWS_HIDE_GUI ; 
 int UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int FUNC6 () ; 
 int FUNC7 (int,int*,int) ; 
 int /*<<< orphan*/  uv__chld ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (int*,int /*<<< orphan*/ ) ; 
 int** FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__ const*,int,int**,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int FUNC17 (TYPE_7__*,int*) ; 
 int FUNC18 (TYPE_7__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC23(uv_loop_t* loop,
             uv_process_t* process,
             const uv_process_options_t* options) {
#if defined(__APPLE__) && (TARGET_OS_TV || TARGET_OS_WATCH)
  /* fork is marked __WATCHOS_PROHIBITED __TVOS_PROHIBITED. */
  return UV_ENOSYS;
#else
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

  FUNC5(options->file != NULL);
  FUNC5(!(options->flags & ~(UV_PROCESS_DETACHED |
                              UV_PROCESS_SETGID |
                              UV_PROCESS_SETUID |
                              UV_PROCESS_WINDOWS_HIDE |
                              UV_PROCESS_WINDOWS_HIDE_CONSOLE |
                              UV_PROCESS_WINDOWS_HIDE_GUI |
                              UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS)));

  FUNC11(loop, (uv_handle_t*)process, UV_PROCESS);
  FUNC1(&process->queue);

  stdio_count = options->stdio_count;
  if (stdio_count < 3)
    stdio_count = 3;

  err = UV_ENOMEM;
  pipes = pipes_storage;
  if (stdio_count > (int) FUNC0(pipes_storage))
    pipes = FUNC14(stdio_count * sizeof(*pipes));

  if (pipes == NULL)
    goto error;

  for (i = 0; i < stdio_count; i++) {
    pipes[i][0] = -1;
    pipes[i][1] = -1;
  }

  for (i = 0; i < options->stdio_count; i++) {
    err = FUNC17(options->stdio + i, pipes[i]);
    if (err)
      goto error;
  }

  /* This pipe is used by the parent to wait until
   * the child has called `execve()`. We need this
   * to avoid the following race condition:
   *
   *    if ((pid = fork()) > 0) {
   *      kill(pid, SIGTERM);
   *    }
   *    else if (pid == 0) {
   *      execve("/bin/cat", argp, envp);
   *    }
   *
   * The parent sends a signal immediately after forking.
   * Since the child may not have called `execve()` yet,
   * there is no telling what process receives the signal,
   * our fork or /bin/cat.
   *
   * To avoid ambiguity, we create a pipe with both ends
   * marked close-on-exec. Then, after the call to `fork()`,
   * the parent polls the read end until it EOFs or errors with EPIPE.
   */
  err = FUNC13(signal_pipe, 0);
  if (err)
    goto error;

  FUNC21(&loop->child_watcher, uv__chld, SIGCHLD);

  /* Acquire write lock to prevent opening new fds in worker threads */
  FUNC19(&loop->cloexec_lock);
  pid = FUNC6();

  if (pid == -1) {
    err = FUNC3(errno);
    FUNC20(&loop->cloexec_lock);
    FUNC8(signal_pipe[0]);
    FUNC8(signal_pipe[1]);
    goto error;
  }

  if (pid == 0) {
    FUNC15(options, stdio_count, pipes, signal_pipe[1]);
    FUNC4();
  }

  /* Release lock in parent process */
  FUNC20(&loop->cloexec_lock);
  FUNC8(signal_pipe[1]);

  process->status = 0;
  exec_errorno = 0;
  do
    r = FUNC7(signal_pipe[0], &exec_errorno, sizeof(exec_errorno));
  while (r == -1 && errno == EINTR);

  if (r == 0)
    ; /* okay, EOF */
  else if (r == sizeof(exec_errorno)) {
    do
      err = FUNC22(pid, &status, 0); /* okay, read errorno */
    while (err == -1 && errno == EINTR);
    FUNC5(err == pid);
  } else if (r == -1 && errno == EPIPE) {
    do
      err = FUNC22(pid, &status, 0); /* okay, got EPIPE */
    while (err == -1 && errno == EINTR);
    FUNC5(err == pid);
  } else
    FUNC4();

  FUNC9(signal_pipe[0]);

  for (i = 0; i < options->stdio_count; i++) {
    err = FUNC18(options->stdio + i, pipes[i]);
    if (err == 0)
      continue;

    while (i--)
      FUNC16(options->stdio + i);

    goto error;
  }

  /* Only activate this handle if exec() happened successfully */
  if (exec_errorno == 0) {
    FUNC2(&loop->process_handles, &process->queue);
    FUNC12(process);
  }

  process->pid = pid;
  process->exit_cb = options->exit_cb;

  if (pipes != pipes_storage)
    FUNC10(pipes);

  return exec_errorno;

error:
  if (pipes != NULL) {
    for (i = 0; i < stdio_count; i++) {
      if (i < options->stdio_count)
        if (options->stdio[i].flags & (UV_INHERIT_FD | UV_INHERIT_STREAM))
          continue;
      if (pipes[i][0] != -1)
        FUNC9(pipes[i][0]);
      if (pipes[i][1] != -1)
        FUNC9(pipes[i][1]);
    }

    if (pipes != pipes_storage)
      FUNC10(pipes);
  }

  return err;
#endif
}