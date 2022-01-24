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
 int /*<<< orphan*/  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC2(void)
{
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "heads\foo");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "/");
	FUNC0(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "///");

	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "ALL_CAPS_AND_UNDERSCORES", "ALL_CAPS_AND_UNDERSCORES");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/MixedCasing", "refs/MixedCasing");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs///heads///a", "refs/heads/a");

	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "HEAD", "HEAD");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "MERGE_HEAD", "MERGE_HEAD");
	FUNC1(
		GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "FETCH_HEAD", "FETCH_HEAD");
}