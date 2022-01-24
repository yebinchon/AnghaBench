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
typedef  int /*<<< orphan*/  uv_check_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ check_cb_called ; 
 int /*<<< orphan*/  check_handle ; 
 int /*<<< orphan*/  prepare_cb ; 
 scalar_t__ prepare_cb_called ; 
 int /*<<< orphan*/  prepare_handle ; 
 int /*<<< orphan*/  timer_cb ; 
 scalar_t__ timer_cb_called ; 
 int /*<<< orphan*/  timer_handle ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uv_check_t* handle) {
  FUNC0(0 == FUNC1(&check_handle));
  FUNC0(0 == FUNC4(&timer_handle));  /* Runs before timer_cb. */
  FUNC0(0 == FUNC3(&timer_handle, timer_cb, 50, 0));
  FUNC0(0 == FUNC2(&prepare_handle, prepare_cb));
  FUNC0(0 == prepare_cb_called);
  FUNC0(0 == check_cb_called);
  FUNC0(0 == timer_cb_called);
  check_cb_called++;
}