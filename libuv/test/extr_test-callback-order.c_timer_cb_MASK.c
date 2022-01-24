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
 int idle_cb_called ; 
 scalar_t__ timer_cb_called ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(uv_timer_t* handle) {
  FUNC0(idle_cb_called == 1);
  FUNC0(timer_cb_called == 0);
  FUNC1(handle);
  timer_cb_called++;
}