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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int repeat_cb_called ; 
 int /*<<< orphan*/  repeat_close_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_timer_t* handle) {
  FUNC1("REPEAT_CB\n");

  FUNC0(handle != NULL);
  FUNC0(1 == FUNC3((uv_handle_t*) handle));

  repeat_cb_called++;

  if (repeat_cb_called == 5) {
    FUNC2((uv_handle_t*)handle, repeat_close_cb);
  }
}