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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  foreach_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	FUNC1("submod2/.gitmodules",
			   "[submodule \"sm1\"]\n"
			   "    path = duplicated-path\n"
			   "    url = sm1\n"
			   "[submodule \"sm2\"]\n"
			   "    path = duplicated-path\n"
			   "    url = sm2\n");

	FUNC0(FUNC2(g_repo, foreach_cb, NULL));
}