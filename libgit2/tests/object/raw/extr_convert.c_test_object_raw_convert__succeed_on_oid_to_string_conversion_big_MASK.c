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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
	git_oid in;
	char big[GIT_OID_HEXSZ + 1 + 3]; /* note + 4 => big buffer */
	char *str;

	FUNC2(FUNC3(&in, exp));

	/* place some tail material */
	big[GIT_OID_HEXSZ+0] = 'W'; /* should be '\0' afterwards */
	big[GIT_OID_HEXSZ+1] = 'X'; /* should remain untouched   */
	big[GIT_OID_HEXSZ+2] = 'Y'; /* ditto */
	big[GIT_OID_HEXSZ+3] = 'Z'; /* ditto */

	/* returns big as hex formatted c-string */
	str = FUNC4(big, sizeof(big), &in);
	FUNC0(str && str == big && *(str+GIT_OID_HEXSZ) == '\0');
	FUNC1(exp, big);

	/* check tail material is untouched */
	FUNC0(str && str == big && *(str+GIT_OID_HEXSZ+1) == 'X');
	FUNC0(str && str == big && *(str+GIT_OID_HEXSZ+2) == 'Y');
	FUNC0(str && str == big && *(str+GIT_OID_HEXSZ+3) == 'Z');
}