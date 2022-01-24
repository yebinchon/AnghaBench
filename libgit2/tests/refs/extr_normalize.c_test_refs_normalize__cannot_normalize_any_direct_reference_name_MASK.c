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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC2(void)
{
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "a");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "/a");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "//a");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "/refs/heads/a/");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a/");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a.");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a.lock");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/foo?bar");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads\foo");
	FUNC1(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/v@ation", "refs/heads/v@ation");
	FUNC1(
		GIT_REFERENCE_FORMAT_NORMAL, "refs///heads///a", "refs/heads/a");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/.a/b");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/foo/../bar");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/foo..bar");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/./foo");
	FUNC0(
		GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/v@{ation");
}