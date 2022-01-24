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
struct vhci_data {int /*<<< orphan*/  readq; struct hci_dev* hdev; int /*<<< orphan*/  open_timeout; } ;
struct inode {int dummy; } ;
struct hci_dev {int dummy; } ;
struct file {struct vhci_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vhci_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct vhci_data *data = file->private_data;
	struct hci_dev *hdev;

	FUNC0(&data->open_timeout);

	hdev = data->hdev;

	if (hdev) {
		FUNC2(hdev);
		FUNC1(hdev);
	}

	FUNC4(&data->readq);
	file->private_data = NULL;
	FUNC3(data);

	return 0;
}