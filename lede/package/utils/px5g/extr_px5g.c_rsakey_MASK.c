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
typedef  int /*<<< orphan*/  mbedtls_pk_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5(char **arg)
{
	mbedtls_pk_context key;
	unsigned int ksize = 512;
	int exp = 65537;
	char *path = NULL;
	bool pem = true;

	while (*arg && **arg == '-') {
		if (!FUNC3(*arg, "-out") && arg[1]) {
			path = arg[1];
			arg++;
		} else if (!FUNC3(*arg, "-3")) {
			exp = 3;
		} else if (!FUNC3(*arg, "-der")) {
			pem = false;
		}
		arg++;
	}

	if (*arg)
		ksize = (unsigned int)FUNC0(*arg);

	FUNC1(&key, ksize, exp, pem);
	FUNC4(&key, path, pem);

	FUNC2(&key);

	return 0;
}