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
 int /*<<< orphan*/  CREATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fs_event_created ; 
 scalar_t__ fs_event_file_count ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_timer_t* handle) {
  /* Make sure we're not attempting to create files we do not intend */
  FUNC0(fs_event_created < fs_event_file_count);

  /* Create the file */
  FUNC1(FUNC2(fs_event_created));

  if (++fs_event_created < fs_event_file_count) {
    /* Create another file on a different event loop tick.  We do it this way
     * to avoid fs events coalescing into one fs event. */
    FUNC0(0 == FUNC3(&timer,
                               fs_event_create_files,
                               CREATE_TIMEOUT,
                               0));
  }
}