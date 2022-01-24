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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  expected_oid ;
typedef  int /*<<< orphan*/  actual_oid ;

/* Variables and functions */
 int GIT_EMISMATCH ; 
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/  const*) ; 

int FUNC2(const git_oid *expected, const git_oid *actual)
{
	char expected_oid[GIT_OID_HEXSZ + 1], actual_oid[GIT_OID_HEXSZ + 1];

	FUNC1(expected_oid, sizeof(expected_oid), expected);
	FUNC1(actual_oid, sizeof(actual_oid), actual);

	FUNC0(GIT_ERROR_ODB, "object hash mismatch - expected %s but got %s",
		expected_oid, actual_oid);

	return GIT_EMISMATCH;
}