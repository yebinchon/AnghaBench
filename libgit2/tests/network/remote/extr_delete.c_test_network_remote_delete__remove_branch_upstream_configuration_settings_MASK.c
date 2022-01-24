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

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(void)
{
	FUNC0(_repo, "branch.mergeless.remote", true);
	FUNC0(_repo, "branch.master.remote", true);

	FUNC1(FUNC2(_repo, "test"));

	FUNC0(_repo, "branch.mergeless.remote", false);
	FUNC0(_repo, "branch.mergeless.merge", false);
	FUNC0(_repo, "branch.master.remote", false);
	FUNC0(_repo, "branch.master.merge", false);
}