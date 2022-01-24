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
 scalar_t__ close_cb_calls ; 
 int connect_cb_calls ; 
 int /*<<< orphan*/  on_close ; 
 int /*<<< orphan*/  tcp ; 
 int /*<<< orphan*/  timer_cb_calls ; 
 int /*<<< orphan*/  timer_close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_timer_t* handle) {
  timer_cb_calls++;

  /*
   * These are the important asserts. The connection callback has been made,
   * but libuv hasn't automatically closed the socket. The user must
   * uv_close the handle manually.
   */
  FUNC0(close_cb_calls == 0);
  FUNC0(connect_cb_calls == 1);

  /* Close the tcp handle. */
  FUNC1((uv_handle_t*)&tcp, on_close);

  /* Close the timer. */
  FUNC1((uv_handle_t*)handle, timer_close_cb);
}