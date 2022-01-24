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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

void FUNC1(void)
{
	FUNC0("refs/heads/branch-*:refs/remotes/origin/branch-*", "refs/heads/branch-a", "refs/remotes/origin/branch-a");
	FUNC0("refs/heads/branch-*/head:refs/remotes/origin/branch-*/head", "refs/heads/branch-a/head", "refs/remotes/origin/branch-a/head");
}