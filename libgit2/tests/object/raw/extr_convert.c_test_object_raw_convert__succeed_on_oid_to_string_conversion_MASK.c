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
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 

void FUNC6(void)
{
	const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
	git_oid in;
	char out[GIT_OID_HEXSZ + 1];
	char *str;
	int i;

	FUNC2(FUNC3(&in, exp));

	/* NULL buffer pointer, returns static empty string */
	str = FUNC4(NULL, sizeof(out), &in);
	FUNC0(str && *str == '\0' && str != out);

	/* zero buffer size, returns static empty string */
	str = FUNC4(out, 0, &in);
	FUNC0(str && *str == '\0' && str != out);

	/* NULL oid pointer, sets existing buffer to empty string */
	str = FUNC4(out, sizeof(out), NULL);
	FUNC0(str && *str == '\0' && str == out);

	/* n == 1, returns out as an empty string */
	str = FUNC4(out, 1, &in);
	FUNC0(str && *str == '\0' && str == out);

	for (i = 1; i < GIT_OID_HEXSZ; i++) {
		out[i+1] = 'Z';
		str = FUNC4(out, i+1, &in);
		/* returns out containing c-string */
		FUNC0(str && str == out);
		/* must be '\0' terminated */
		FUNC0(*(str+i) == '\0');
		/* must not touch bytes past end of string */
		FUNC0(*(str+(i+1)) == 'Z');
		/* i == n-1 charaters of string */
		FUNC2(FUNC5(exp, out, i));
	}

	/* returns out as hex formatted c-string */
	str = FUNC4(out, sizeof(out), &in);
	FUNC0(str && str == out && *(str+GIT_OID_HEXSZ) == '\0');
	FUNC1(exp, out);
}