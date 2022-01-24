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
struct opal_dev {int /*<<< orphan*/  comid; int /*<<< orphan*/  resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_BUFFER_LENGTH ; 
 int /*<<< orphan*/  OPAL_DISCOVERY_COMID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*) ; 
 int FUNC2 (struct opal_dev*) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev, void *data)
{
	int ret;

	FUNC0(dev->resp, 0, IO_BUFFER_LENGTH);
	dev->comid = OPAL_DISCOVERY_COMID;
	ret = FUNC2(dev);
	if (ret)
		return ret;

	return FUNC1(dev);
}