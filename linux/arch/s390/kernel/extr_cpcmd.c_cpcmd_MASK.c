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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (char const*,char*,int,int*) ; 
 int /*<<< orphan*/  cpcmd_lock ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(const char *cmd, char *response, int rlen, int *response_code)
{
	unsigned long flags;
	char *lowbuf;
	int len;

	if (FUNC1(response)) {
		lowbuf = FUNC3(rlen, GFP_KERNEL);
		if (!lowbuf) {
			FUNC5("The cpcmd kernel function failed to allocate a response buffer\n");
			return -ENOMEM;
		}
		FUNC6(&cpcmd_lock, flags);
		len = FUNC0(cmd, lowbuf, rlen, response_code);
		FUNC7(&cpcmd_lock, flags);
		FUNC4(response, lowbuf, rlen);
		FUNC2(lowbuf);
	} else {
		FUNC6(&cpcmd_lock, flags);
		len = FUNC0(cmd, response, rlen, response_code);
		FUNC7(&cpcmd_lock, flags);
	}
	return len;
}