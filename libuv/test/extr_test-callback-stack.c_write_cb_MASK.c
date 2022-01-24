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
typedef  int /*<<< orphan*/  uv_write_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ nested ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  timer_cb ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb_called ; 

__attribute__((used)) static void FUNC5(uv_write_t* req, int status) {
  int r;

  FUNC0(status == 0);
  FUNC0(nested == 0 && "write_cb must be called from a fresh stack");

  FUNC1("Data written. 500ms timeout...");

  /* After the data has been sent, we're going to wait for a while, then start
   * reading. This makes us certain that the message has been echoed back to
   * our receive buffer when we start reading. This maximizes the temptation
   * for the backend to use dirty stack for calling read_cb. */
  nested++;
  r = FUNC3(FUNC2(), &timer);
  FUNC0(r == 0);
  r = FUNC4(&timer, timer_cb, 500, 0);
  FUNC0(r == 0);
  nested--;

  write_cb_called++;
}