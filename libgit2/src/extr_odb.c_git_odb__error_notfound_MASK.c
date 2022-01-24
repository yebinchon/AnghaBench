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

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/  const*) ; 

int FUNC2(
	const char *message, const git_oid *oid, size_t oid_len)
{
	if (oid != NULL) {
		char oid_str[GIT_OID_HEXSZ + 1];
		FUNC1(oid_str, oid_len+1, oid);
		FUNC0(GIT_ERROR_ODB, "object not found - %s (%.*s)",
			message, (int) oid_len, oid_str);
	} else
		FUNC0(GIT_ERROR_ODB, "object not found - %s", message);

	return GIT_ENOTFOUND;
}