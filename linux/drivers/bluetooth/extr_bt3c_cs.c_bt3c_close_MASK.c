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
struct bt3c_info {struct hci_dev* hdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC3(struct bt3c_info *info)
{
	struct hci_dev *hdev = info->hdev;

	if (!hdev)
		return -ENODEV;

	FUNC0(hdev);

	FUNC2(hdev);
	FUNC1(hdev);

	return 0;
}