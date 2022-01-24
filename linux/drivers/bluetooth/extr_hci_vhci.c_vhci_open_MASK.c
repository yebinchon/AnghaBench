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
struct vhci_data {int /*<<< orphan*/  open_timeout; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  readq; } ;
struct inode {int dummy; } ;
struct file {struct vhci_data* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vhci_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vhci_open_timeout ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct vhci_data *data;

	data = FUNC2(sizeof(struct vhci_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC7(&data->readq);
	FUNC1(&data->read_wait);

	FUNC4(&data->open_mutex);
	FUNC0(&data->open_timeout, vhci_open_timeout);

	file->private_data = data;
	FUNC5(inode, file);

	FUNC6(&data->open_timeout, FUNC3(1000));

	return 0;
}