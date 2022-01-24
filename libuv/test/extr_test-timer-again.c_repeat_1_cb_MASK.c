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
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  repeat_1 ; 
 int repeat_1_cb_called ; 
 int /*<<< orphan*/  repeat_2 ; 
 int repeat_2_cb_allowed ; 
 scalar_t__ start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(uv_timer_t* handle) {
  int r;

  FUNC0(handle == &repeat_1);
  FUNC0(FUNC7((uv_timer_t*)handle) == 50);

  FUNC2(stderr, "repeat_1_cb called after %ld ms\n",
          (long int)(FUNC5(FUNC4()) - start_time));
  FUNC1(stderr);

  repeat_1_cb_called++;

  r = FUNC6(&repeat_2);
  FUNC0(r == 0);

  if (repeat_1_cb_called == 10) {
    FUNC3((uv_handle_t*)handle, close_cb);
    /* We're not calling uv_timer_again on repeat_2 any more, so after this
     * timer_2_cb is expected. */
    repeat_2_cb_allowed = 1;
    return;
  }
}