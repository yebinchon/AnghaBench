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
typedef  int /*<<< orphan*/  git_global_shutdown_fn ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  git__n_shutdown_callbacks ; 
 int /*<<< orphan*/ * git__shutdown_callbacks ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(git_global_shutdown_fn callback)
{
	int count = FUNC2(&git__n_shutdown_callbacks);
	FUNC1(count <= (int) FUNC0(git__shutdown_callbacks) && count > 0);
	git__shutdown_callbacks[count - 1] = callback;
}