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
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int fs_event_cb_called ; 
 int /*<<< orphan*/  fs_event_cb_file_current_dir ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  timer_cb_touch ; 
 int timer_cb_touch_called ; 
 int FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uv_loop_t* const loop, int file_or_dir) {
  uv_timer_t timer;
  uv_fs_event_t fs_event;
  int r;

  /* Setup */
  FUNC2("watch_file");
  FUNC1("watch_file");

  r = FUNC3(loop, &fs_event);
  FUNC0(r == 0);
  /* watching a dir is the only way to get fsevents involved on apple
     platforms */
  r = FUNC4(&fs_event,
                        fs_event_cb_file_current_dir,
                        file_or_dir == 1 ? "." : "watch_file",
                        0);
  FUNC0(r == 0);

  r = FUNC6(loop, &timer);
  FUNC0(r == 0);

  r = FUNC7(&timer, timer_cb_touch, 100, 0);
  FUNC0(r == 0);

  FUNC0(timer_cb_touch_called == 0);
  FUNC0(fs_event_cb_called == 0);

  FUNC5(loop, UV_RUN_DEFAULT);

  FUNC0(timer_cb_touch_called == 1);
  FUNC0(fs_event_cb_called == 1);

  /* Cleanup */
  FUNC2("watch_file");
  fs_event_cb_called = 0;
  timer_cb_touch_called = 0;
  FUNC5(loop, UV_RUN_DEFAULT); /* flush pending closes */
}