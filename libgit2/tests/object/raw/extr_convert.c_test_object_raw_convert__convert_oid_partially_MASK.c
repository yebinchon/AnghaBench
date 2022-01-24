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
typedef  int /*<<< orphan*/  big ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
	git_oid in;
	char big[GIT_OID_HEXSZ + 1 + 3]; /* note + 4 => big buffer */

	FUNC2(FUNC3(&in, exp));

	FUNC4(big, sizeof(big), &in);
	FUNC1(exp, big);

	FUNC4(big, GIT_OID_HEXSZ + 1, &in);
	FUNC1(exp, big);

	FUNC0(big, 1, &in, "1");
	FUNC0(big, 2, &in, "16");
	FUNC0(big, 3, &in, "16a");
	FUNC0(big, 4, &in, "16a0");
	FUNC0(big, 5, &in, "16a01");

	FUNC0(big, GIT_OID_HEXSZ, &in, exp);
	FUNC0(
		big, GIT_OID_HEXSZ - 1, &in, "16a0123456789abcdef4b775213c23a8bd74f5e");
	FUNC0(
		big, GIT_OID_HEXSZ - 2, &in, "16a0123456789abcdef4b775213c23a8bd74f5");
	FUNC0(
		big, GIT_OID_HEXSZ - 3, &in, "16a0123456789abcdef4b775213c23a8bd74f");
}