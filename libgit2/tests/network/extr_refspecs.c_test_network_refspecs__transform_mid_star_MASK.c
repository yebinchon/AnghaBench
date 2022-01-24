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
	FUNC0("refs/pull/*/head:refs/remotes/origin/pr/*", "refs/pull/23/head", "refs/remotes/origin/pr/23");
	FUNC0("refs/heads/*:refs/remotes/origin/*", "refs/heads/master", "refs/remotes/origin/master");
	FUNC0("refs/heads/*:refs/remotes/origin/*", "refs/heads/user/feature", "refs/remotes/origin/user/feature");
	FUNC0("refs/heads/*:refs/heads/*", "refs/heads/master", "refs/heads/master");
	FUNC0("refs/heads/*:refs/heads/*", "refs/heads/user/feature", "refs/heads/user/feature");
	FUNC0("refs/*:refs/*", "refs/heads/master", "refs/heads/master");
}