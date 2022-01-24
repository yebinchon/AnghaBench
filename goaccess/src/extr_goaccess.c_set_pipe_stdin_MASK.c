#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  real_time_html; scalar_t__ output_stdout; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pipe; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ conf ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* glog ; 
 int FUNC9 (char**) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (void)
{
  char *term = NULL;
  FILE *pipe = stdin;
  int fd1, fd2;

  /* If unable to open a terminal, yet data is being piped, then it's
   * probably from the cron.
   *
   * Note: If used from the cron, it will require the
   * user to use a single dash to parse piped data such as:
   * cat access.log | goaccess - */
  if ((fd1 = FUNC9 (&term)) == -1)
    goto out;

  if ((fd2 = FUNC2 (FUNC6 (stdin))) == -1)
    FUNC0 ("Unable to dup stdin: %s", FUNC10 (errno));

  pipe = FUNC5 (fd2, "r");
  if (FUNC8 (term, "r", stdin) == 0)
    FUNC0 ("Unable to open input from TTY");
  if (FUNC6 (stdin) != 0)
    (void) FUNC3 (FUNC6 (stdin), 0);

  FUNC1 ();
  /* no need to set it as non-blocking since we are simply outputting a
   * static report */
  if (conf.output_stdout && !conf.real_time_html)
    goto out;

  /* Using select(), poll(), or epoll(), etc may be a better choice... */
  if (FUNC4 (fd2, F_SETFL, FUNC4 (fd2, F_GETFL, 0) | O_NONBLOCK) == -1)
    FUNC0 ("Unable to set fd as non-blocking: %s.", FUNC10 (errno));
out:

  glog->pipe = pipe;
  FUNC7 (term);
}