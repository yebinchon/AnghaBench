#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pidfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC12 (void)
{
  pid_t pid, sid;
  int fd;

  /* Clone ourselves to make a child */
  pid = FUNC5 ();

  if (pid < 0)
    FUNC4 (EXIT_FAILURE);
  if (pid > 0) {
    FUNC11 (conf.pidfile, pid);
    FUNC7 ("Daemonized GoAccess: %d\n", pid);
    FUNC4 (EXIT_SUCCESS);
  }

  FUNC10 (0);
  /* attempt to create our own process group */
  sid = FUNC8 ();
  if (sid < 0) {
    FUNC0 (("Unable to setsid: %s.\n", FUNC9 (errno)));
    FUNC4 (EXIT_FAILURE);
  }

  /* set the working directory to the root directory.
   * requires the user to specify absolute paths */
  if (FUNC1 ("/") < 0) {
    FUNC0 (("Unable to set chdir: %s.\n", FUNC9 (errno)));
    FUNC4 (EXIT_FAILURE);
  }

  /* redirect fd's 0,1,2 to /dev/null */
  /* Note that the user will need to use --debug-file for log output */
  if ((fd = FUNC6 ("/dev/null", O_RDWR, 0)) == -1) {
    FUNC0 (("Unable to open /dev/null: %s.\n", FUNC9 (errno)));
    FUNC4 (EXIT_FAILURE);
  }

  FUNC3 (fd, STDIN_FILENO);
  FUNC3 (fd, STDOUT_FILENO);
  FUNC3 (fd, STDERR_FILENO);
  if (fd > STDERR_FILENO) {
    FUNC2 (fd);
  }
}