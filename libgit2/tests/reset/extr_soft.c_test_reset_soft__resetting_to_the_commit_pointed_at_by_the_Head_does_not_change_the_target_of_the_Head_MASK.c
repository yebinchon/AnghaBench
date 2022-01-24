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
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_RESET_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

void FUNC6(void)
{
	git_oid oid;
	char raw_head_oid[GIT_OID_HEXSZ + 1];

	FUNC0(FUNC3(&oid, repo, "HEAD"));
	FUNC1(raw_head_oid, &oid);
	raw_head_oid[GIT_OID_HEXSZ] = '\0';

	FUNC0(FUNC5(&target, repo, raw_head_oid));

	FUNC0(FUNC4(repo, target, GIT_RESET_SOFT, NULL));

	FUNC0(FUNC3(&oid, repo, "HEAD"));
	FUNC0(FUNC2(&oid, raw_head_oid));
}