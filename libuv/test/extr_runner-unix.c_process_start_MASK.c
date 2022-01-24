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
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/ * stdout_file; int /*<<< orphan*/  name; scalar_t__ pid; scalar_t__ status; scalar_t__ terminated; } ;
typedef  TYPE_1__ process_info_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  fdstr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  environ ; 
 scalar_t__ errno ; 
 char* executable_path ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int*) ; 
 int FUNC11 (int,int*,int) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(char* name, char* part, process_info_t* p, int is_helper) {
  FILE* stdout_file;
  int stdout_fd;
  const char* arg;
  char* args[16];
  int pipefd[2];
  char fdstr[8];
  ssize_t rc;
  int n;
  pid_t pid;

  arg = FUNC8("UV_USE_VALGRIND");
  n = 0;

  /* Disable valgrind for helpers, it complains about helpers leaking memory.
   * They're killed after the test and as such never get a chance to clean up.
   */
  if (is_helper == 0 && arg != NULL && FUNC1(arg) != 0) {
    args[n++] = "valgrind";
    args[n++] = "--quiet";
    args[n++] = "--leak-check=full";
    args[n++] = "--show-reachable=yes";
    args[n++] = "--error-exitcode=125";
  }

  args[n++] = executable_path;
  args[n++] = name;
  args[n++] = part;
  args[n++] = NULL;

  stdout_file = FUNC15();
  stdout_fd = FUNC5(stdout_file);
  if (!stdout_file) {
    FUNC9("tmpfile");
    return -1;
  }

  if (is_helper) {
    if (FUNC10(pipefd)) {
      FUNC9("pipe");
      return -1;
    }

    FUNC13(fdstr, sizeof(fdstr), "%d", pipefd[1]);
    if (FUNC12("UV_TEST_RUNNER_FD", fdstr, /* overwrite */ 1)) {
      FUNC9("setenv");
      return -1;
    }
  }

  p->terminated = 0;
  p->status = 0;

  pid = FUNC6();

  if (pid < 0) {
    FUNC9("fork");
    return -1;
  }

  if (pid == 0) {
    /* child */
    if (is_helper)
      FUNC2(pipefd[0]);
    FUNC3(stdout_fd, STDOUT_FILENO);
    FUNC3(stdout_fd, STDERR_FILENO);
    FUNC4(args[0], args, environ);
    FUNC9("execve()");
    FUNC0(127);
  }

  /* parent */
  p->pid = pid;
  p->name = FUNC14(name);
  p->stdout_file = stdout_file;

  if (!is_helper)
    return 0;

  FUNC2(pipefd[1]);
  FUNC16("UV_TEST_RUNNER_FD");

  do
    rc = FUNC11(pipefd[0], &n, 1);
  while (rc == -1 && errno == EINTR);

  FUNC2(pipefd[0]);

  if (rc == -1) {
    FUNC9("read");
    return -1;
  }

  if (rc > 0) {
    FUNC7(stderr, "EOF expected but got data.\n");
    return -1;
  }

  return 0;
}