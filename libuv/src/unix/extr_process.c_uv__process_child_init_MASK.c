#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; int /*<<< orphan*/  args; int /*<<< orphan*/  file; int /*<<< orphan*/ * env; int /*<<< orphan*/  uid; int /*<<< orphan*/  gid; int /*<<< orphan*/ * cwd; } ;
typedef  TYPE_1__ uv_process_options_t ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_DUPFD ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SIGKILL ; 
 int SIGKILLTHR ; 
 int SIGSTOP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int UV_PROCESS_DETACHED ; 
 int UV_PROCESS_SETGID ; 
 int UV_PROCESS_SETUID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/ * environ ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(const uv_process_options_t* options,
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
    FUNC11();

  /* First duplicate low numbered fds, since it's not safe to duplicate them,
   * they could get replaced. Example: swapping stdout and stderr; without
   * this fd 2 (stderr) would be duplicated into fd 1, thus making both
   * stdout and stderr go to the same fd, which was not the intention. */
  for (fd = 0; fd < stdio_count; fd++) {
    use_fd = pipes[fd][1];
    if (use_fd < 0 || use_fd >= fd)
      continue;
    pipes[fd][1] = FUNC6(use_fd, F_DUPFD, stdio_count);
    if (pipes[fd][1] == -1) {
      FUNC18(error_fd, FUNC1(errno));
      FUNC2(127);
    }
  }

  for (fd = 0; fd < stdio_count; fd++) {
    close_fd = pipes[fd][0];
    use_fd = pipes[fd][1];

    if (use_fd < 0) {
      if (fd >= 3)
        continue;
      else {
        /* redirect stdin, stdout and stderr to /dev/null even if UV_IGNORE is
         * set
         */
        use_fd = FUNC7("/dev/null", fd == 0 ? O_RDONLY : O_RDWR);
        close_fd = use_fd;

        if (use_fd < 0) {
          FUNC18(error_fd, FUNC1(errno));
          FUNC2(127);
        }
      }
    }

    if (fd == use_fd)
      FUNC15(use_fd, 0);
    else
      fd = FUNC4(use_fd, fd);

    if (fd == -1) {
      FUNC18(error_fd, FUNC1(errno));
      FUNC2(127);
    }

    if (fd <= 2)
      FUNC17(fd, 0);

    if (close_fd >= stdio_count)
      FUNC16(close_fd);
  }

  for (fd = 0; fd < stdio_count; fd++) {
    use_fd = pipes[fd][1];

    if (use_fd >= stdio_count)
      FUNC16(use_fd);
  }

  if (options->cwd != NULL && FUNC3(options->cwd)) {
    FUNC18(error_fd, FUNC1(errno));
    FUNC2(127);
  }

  if (options->flags & (UV_PROCESS_SETUID | UV_PROCESS_SETGID)) {
    /* When dropping privileges from root, the `setgroups` call will
     * remove any extraneous groups. If we don't call this, then
     * even though our uid has dropped, we may still have groups
     * that enable us to do super-user things. This will fail if we
     * aren't root, so don't bother checking the return value, this
     * is just done as an optimistic privilege dropping function.
     */
    FUNC0(FUNC10(0, NULL));
  }

  if ((options->flags & UV_PROCESS_SETGID) && FUNC9(options->gid)) {
    FUNC18(error_fd, FUNC1(errno));
    FUNC2(127);
  }

  if ((options->flags & UV_PROCESS_SETUID) && FUNC12(options->uid)) {
    FUNC18(error_fd, FUNC1(errno));
    FUNC2(127);
  }

  if (options->env != NULL) {
    environ = options->env;
  }

  /* Reset signal disposition.  Use a hard-coded limit because NSIG
   * is not fixed on Linux: it's either 32, 34 or 64, depending on
   * whether RT signals are enabled.  We are not allowed to touch
   * RT signal handlers, glibc uses them internally.
   */
  for (n = 1; n < 32; n += 1) {
    if (n == SIGKILL || n == SIGSTOP)
      continue;  /* Can't be changed. */

#if defined(__HAIKU__)
    if (n == SIGKILLTHR)
      continue;  /* Can't be changed. */
#endif

    if (SIG_ERR != FUNC14(n, SIG_DFL))
      continue;

    FUNC18(error_fd, FUNC1(errno));
    FUNC2(127);
  }

  /* Reset signal mask. */
  FUNC13(&set);
  err = FUNC8(SIG_SETMASK, &set, NULL);

  if (err != 0) {
    FUNC18(error_fd, FUNC1(err));
    FUNC2(127);
  }

  FUNC5(options->file, options->args);
  FUNC18(error_fd, FUNC1(errno));
  FUNC2(127);
}