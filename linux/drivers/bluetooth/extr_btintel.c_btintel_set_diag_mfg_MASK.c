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
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hci_dev*) ; 
 int FUNC1 (struct hci_dev*,int,int) ; 
 int FUNC2 (struct hci_dev*,int) ; 

int FUNC3(struct hci_dev *hdev, bool enable)
{
	int err, ret;

	err = FUNC0(hdev);
	if (err)
		return err;

	ret = FUNC2(hdev, enable);

	err = FUNC1(hdev, false, false);
	if (err)
		return err;

	return ret;
}