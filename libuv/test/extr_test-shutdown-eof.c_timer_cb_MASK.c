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
 scalar_t__ called_tcp_close_cb ; 
 int /*<<< orphan*/  called_timer_cb ; 
 int /*<<< orphan*/  tcp ; 
 int /*<<< orphan*/  tcp_close_cb ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  timer_close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_timer_t* handle) {
  FUNC0(handle == &timer);
  FUNC1((uv_handle_t*) handle, timer_close_cb);

  /*
   * The most important assert of the test: we have not received
   * tcp_close_cb yet.
   */
  FUNC0(called_tcp_close_cb == 0);
  FUNC1((uv_handle_t*) &tcp, tcp_close_cb);

  called_timer_cb++;
}