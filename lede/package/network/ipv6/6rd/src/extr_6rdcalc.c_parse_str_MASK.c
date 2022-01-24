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
 int AF_INET ; 
 int AF_INET6 ; 
 int FUNC0 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*,char) ; 
 unsigned long FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(int af, char *str, void *addr, unsigned long *mask)
{
	int ret;
	char *slash;

	/* Split the address at the slash. */
	if ((slash = FUNC3(str, '/')) == NULL)
		FUNC2();
	*slash = '\0';

	/* Parse the address. */
	if ((ret = FUNC0(af, str, addr)) != 1) {
		if (ret == 0)
			FUNC2();
		else
			FUNC1();
	}

	/* Parse the mask. */
	*mask = FUNC4(slash+1, NULL, 10);
	if ((af == AF_INET  && *mask >  32) ||
		(af == AF_INET6 && *mask > 128))
		FUNC2();
}