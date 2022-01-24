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
 int /*<<< orphan*/  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN ; 
 int /*<<< orphan*/  ONE_LEVEL_AND_REFSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC2(void)
{
	FUNC1(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "heads/*foo/bar", "heads/*foo/bar");
	FUNC1(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "heads/foo*/bar", "heads/foo*/bar");
	FUNC1(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "heads/f*o/bar", "heads/f*o/bar");

	FUNC0(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo");
	FUNC1(
		ONE_LEVEL_AND_REFSPEC, "FOO", "FOO");

	FUNC1(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo/bar", "foo/bar");
	FUNC1(
		ONE_LEVEL_AND_REFSPEC, "foo/bar", "foo/bar");

	FUNC1(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*/foo", "*/foo");
	FUNC1(
		ONE_LEVEL_AND_REFSPEC, "*/foo", "*/foo");

	FUNC1(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo/*/bar", "foo/*/bar");
	FUNC1(
		ONE_LEVEL_AND_REFSPEC, "foo/*/bar", "foo/*/bar");

	FUNC0(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*");
	FUNC1(
		ONE_LEVEL_AND_REFSPEC, "*", "*");

	FUNC0(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo/*/*");
	FUNC0(
		ONE_LEVEL_AND_REFSPEC, "foo/*/*");

	FUNC0(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*/foo/*");
	FUNC0(
		ONE_LEVEL_AND_REFSPEC, "*/foo/*");

	FUNC0(
		GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*/*/foo");
	FUNC0(
		ONE_LEVEL_AND_REFSPEC, "*/*/foo");
}