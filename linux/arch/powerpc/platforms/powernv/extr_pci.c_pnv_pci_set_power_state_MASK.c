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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct opal_msg {int dummy; } ;
typedef  int /*<<< orphan*/  m ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 scalar_t__ OPAL_ASYNC_COMPLETION ; 
 int /*<<< orphan*/  OPAL_PCI_SET_POWER_STATE ; 
 scalar_t__ OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct opal_msg*,struct opal_msg*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct opal_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(uint64_t id, uint8_t state, struct opal_msg *msg)
{
	struct opal_msg m;
	int token, ret;
	int64_t rc;

	if (!FUNC4(OPAL_PCI_SET_POWER_STATE))
		return -ENXIO;

	token = FUNC1();
	if (FUNC6(token < 0))
		return token;

	rc = FUNC5(token, id, (uint64_t)&state);
	if (rc == OPAL_SUCCESS) {
		ret = 0;
		goto exit;
	} else if (rc != OPAL_ASYNC_COMPLETION) {
		ret = -EIO;
		goto exit;
	}

	ret = FUNC3(token, &m);
	if (ret < 0)
		goto exit;

	if (msg) {
		ret = 1;
		FUNC0(msg, &m, sizeof(m));
	}

exit:
	FUNC2(token);
	return ret;
}