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
typedef  int /*<<< orphan*/  u32 ;
struct opal_msg {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int OPAL_ASYNC_COMPLETION ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct opal_msg*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct opal_msg) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(u32 handle, bool enable)
{
	struct opal_msg msg;
	int token, ret;

	token = FUNC0();
	if (token < 0)
		return token;

	ret = FUNC5(handle, token, enable);
	if (ret == OPAL_ASYNC_COMPLETION) {
		ret = FUNC2(token, &msg);
		if (ret) {
			FUNC6("Failed to wait for the async response\n");
			ret = -EIO;
			goto out;
		}
		ret = FUNC3(FUNC4(msg));
	} else {
		ret = FUNC3(ret);
	}

out:
	FUNC1(token);
	return ret;
}