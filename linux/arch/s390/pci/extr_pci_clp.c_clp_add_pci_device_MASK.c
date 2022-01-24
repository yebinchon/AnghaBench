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
typedef  void* u32 ;
struct zpci_dev {int /*<<< orphan*/  state; void* fid; void* fh; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ZPCI_FN_STATE_CONFIGURED ; 
 int /*<<< orphan*/  ZPCI_FN_STATE_STANDBY ; 
 int FUNC0 (struct zpci_dev*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct zpci_dev*) ; 
 struct zpci_dev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,void*,int,...) ; 

int FUNC5(u32 fid, u32 fh, int configured)
{
	struct zpci_dev *zdev;
	int rc = -ENOMEM;

	FUNC4(3, "add fid:%x, fh:%x, c:%d\n", fid, fh, configured);
	zdev = FUNC2(sizeof(*zdev), GFP_KERNEL);
	if (!zdev)
		goto error;

	zdev->fh = fh;
	zdev->fid = fid;

	/* Query function properties and update zdev */
	rc = FUNC0(zdev, fh);
	if (rc)
		goto error;

	if (configured)
		zdev->state = ZPCI_FN_STATE_CONFIGURED;
	else
		zdev->state = ZPCI_FN_STATE_STANDBY;

	rc = FUNC3(zdev);
	if (rc)
		goto error;
	return 0;

error:
	FUNC4(0, "add fid:%x, rc:%d\n", fid, rc);
	FUNC1(zdev);
	return rc;
}