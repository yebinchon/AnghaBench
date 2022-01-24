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
 int /*<<< orphan*/  huge_timer1 ; 
 int /*<<< orphan*/  huge_timer2 ; 
 int /*<<< orphan*/  tiny_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(uv_timer_t* handle) {
  FUNC0(handle == &tiny_timer);
  FUNC1((uv_handle_t*) &tiny_timer, NULL);
  FUNC1((uv_handle_t*) &huge_timer1, NULL);
  FUNC1((uv_handle_t*) &huge_timer2, NULL);
}