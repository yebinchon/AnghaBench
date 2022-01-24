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
struct opal_msg {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
#define  OPAL_ASYNC_COMPLETION 129 
#define  OPAL_SUCCESS 128 
 int /*<<< orphan*/  num_lines ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct opal_msg*) ; 
 int FUNC3 (struct opal_msg) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oppanel_lines ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct opal_msg msg;
	int rc, token;

	token = FUNC0();
	if (token < 0) {
		if (token != -ERESTARTSYS)
			FUNC5("Couldn't get OPAL async token [token=%d]\n",
				token);
		return token;
	}

	rc = FUNC4(token, oppanel_lines, num_lines);
	switch (rc) {
	case OPAL_ASYNC_COMPLETION:
		rc = FUNC2(token, &msg);
		if (rc) {
			FUNC5("Failed to wait for async response [rc=%d]\n",
				rc);
			break;
		}
		rc = FUNC3(msg);
		if (rc != OPAL_SUCCESS) {
			FUNC5("OPAL async call returned failed [rc=%d]\n",
				rc);
			break;
		}
	case OPAL_SUCCESS:
		break;
	default:
		FUNC5("OPAL write op-panel call failed [rc=%d]\n", rc);
	}

	FUNC1(token);
	return rc;
}