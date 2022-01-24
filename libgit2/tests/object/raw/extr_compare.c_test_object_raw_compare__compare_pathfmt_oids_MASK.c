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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	const char *exp1 = "16a0123456789abcdef4b775213c23a8bd74f5e0";
	const char *exp2 = "16/a0123456789abcdef4b775213c23a8bd74f5e0";
	git_oid in;
	char out[GIT_OID_HEXSZ + 2];

	FUNC2(FUNC3(&in, exp1));

	/* Format doesn't touch the last byte */
	out[GIT_OID_HEXSZ + 1] = 'Z';
	FUNC4(out, &in);
	FUNC0(out[GIT_OID_HEXSZ + 1] == 'Z');

	/* Format produced the right result */
	out[GIT_OID_HEXSZ + 1] = '\0';
	FUNC1(exp2, out);
}