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
typedef  int /*<<< orphan*/  uv_timer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int fs_event_file_count ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int fs_event_removed ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void (*) (int /*<<< orphan*/ *),int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_timer_t* handle) {
  int r;
  int i;

  /* NOTE: handle might be NULL if invoked not as timer callback */
  if (handle == NULL) {
    /* Unlink all files */
    for (i = 0; i < 16; i++) {
      r = FUNC2(FUNC1(i));
      if (handle != NULL)
        FUNC0(r == 0);
    }
  } else {
    /* Make sure we're not attempting to remove files we do not intend */
    FUNC0(fs_event_removed < fs_event_file_count);

    /* Remove the file */
    FUNC0(0 == FUNC2(FUNC1(fs_event_removed)));

    if (++fs_event_removed < fs_event_file_count) {
      /* Remove another file on a different event loop tick.  We do it this way
       * to avoid fs events coalescing into one fs event. */
      FUNC0(0 == FUNC3(&timer, fs_event_unlink_files, 1, 0));
    }
  }
}