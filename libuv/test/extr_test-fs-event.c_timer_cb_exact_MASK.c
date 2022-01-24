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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fs_event ; 
 scalar_t__ timer_cb_exact_called ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_timer_t* handle) {
  int r;

  if (timer_cb_exact_called == 0) {
    FUNC1("watch_dir/file.js");
  } else {
    FUNC2((uv_handle_t*)handle, NULL);
    r = FUNC3(&fs_event);
    FUNC0(r == 0);
    FUNC2((uv_handle_t*) &fs_event, NULL);
  }

  ++timer_cb_exact_called;
}