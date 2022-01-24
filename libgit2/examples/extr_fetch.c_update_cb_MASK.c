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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,...) ; 

__attribute__((used)) static int FUNC3(const char *refname, const git_oid *a, const git_oid *b, void *data)
{
	char a_str[GIT_OID_HEXSZ+1], b_str[GIT_OID_HEXSZ+1];
	(void)data;

	FUNC0(b_str, b);
	b_str[GIT_OID_HEXSZ] = '\0';

	if (FUNC1(a)) {
		FUNC2("[new]     %.20s %s\n", b_str, refname);
	} else {
		FUNC0(a_str, a);
		a_str[GIT_OID_HEXSZ] = '\0';
		FUNC2("[updated] %.10s..%.10s %s\n", a_str, b_str, refname);
	}

	return 0;
}