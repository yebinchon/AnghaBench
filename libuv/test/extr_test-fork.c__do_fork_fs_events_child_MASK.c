#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FS_TEST_FILE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(int file_or_dir) {
  /* basic fsevents work in the child after a fork */
  pid_t child_pid;
  uv_loop_t loop;

  /* Watch in the parent, prime the loop and/or threads. */
  FUNC3(FUNC6(), file_or_dir);
  child_pid = FUNC4();
  FUNC0(child_pid != -1);

  if (child_pid != 0) {
    /* parent */
    FUNC2(child_pid);
  } else {
    /* child */
    /* Ee can watch in a new loop, but dirs only work
       if we're on linux. */
#if defined(__APPLE__)
    file_or_dir = FS_TEST_FILE;
#endif
    FUNC5("Running child\n");
    FUNC9(&loop);
    FUNC5("Child first watch\n");
    FUNC3(&loop, file_or_dir);
    FUNC0(0 == FUNC7(&loop));
    FUNC5("Child second watch default loop\n");
    /* Ee can watch in the default loop. */
    FUNC0(0 == FUNC8(FUNC6()));
    /* On some platforms (OS X), if we don't update the time now,
     * the timer cb fires before the event loop enters uv__io_poll,
     * instead of after, meaning we don't see the change! This may be
     * a general race.
     */
    FUNC10(FUNC6());
    FUNC3(FUNC6(), file_or_dir);

    /* We can close the parent loop successfully too. This is
       especially important on Apple platforms where if we're not
       careful trying to touch the CFRunLoop, even just to shut it
       down, that we allocated in the FS_TEST_DIR case would crash. */
    FUNC0(0 == FUNC7(FUNC6()));

    FUNC5("Exiting child \n");
  }

  FUNC1();
  return 0;

}