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
 int /*<<< orphan*/  GIT_REFERENCE_FORMAT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC1(void)
{
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/dummy/a", "refs/dummy/a");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/stash", "refs/stash");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/tags/a", "refs/tags/a");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a/b", "refs/heads/a/b");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a./b", "refs/heads/a./b");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/v@ation", "refs/heads/v@ation");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs///heads///a", "refs/heads/a");
}