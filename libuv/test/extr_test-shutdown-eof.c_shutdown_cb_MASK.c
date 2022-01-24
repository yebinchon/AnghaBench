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
typedef  int /*<<< orphan*/  uv_shutdown_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int called_connect_cb ; 
 int /*<<< orphan*/  called_shutdown_cb ; 
 scalar_t__ called_tcp_close_cb ; 
 scalar_t__ called_timer_cb ; 
 scalar_t__ called_timer_close_cb ; 
 int /*<<< orphan*/  got_eof ; 
 int /*<<< orphan*/  shutdown_req ; 

__attribute__((used)) static void FUNC1(uv_shutdown_t *req, int status) {
  FUNC0(req == &shutdown_req);

  FUNC0(called_connect_cb == 1);
  FUNC0(!got_eof);
  FUNC0(called_tcp_close_cb == 0);
  FUNC0(called_timer_close_cb == 0);
  FUNC0(called_timer_cb == 0);

  called_shutdown_cb++;
}