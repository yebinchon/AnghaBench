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
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int fork_signal_cb_called ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(uv_signal_t* handle, int signum)
{
  fork_signal_cb_called = signum;
  FUNC0((uv_handle_t*)handle, NULL);
}