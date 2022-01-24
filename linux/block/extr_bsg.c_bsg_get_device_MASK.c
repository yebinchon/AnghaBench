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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct bsg_device {int dummy; } ;
struct bsg_class_device {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct bsg_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct bsg_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bsg_device* FUNC2 (struct inode*,int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  bsg_minor_idr ; 
 int /*<<< orphan*/  bsg_mutex ; 
 struct bsg_class_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bsg_device *FUNC7(struct inode *inode, struct file *file)
{
	struct bsg_device *bd;
	struct bsg_class_device *bcd;

	/*
	 * find the class device
	 */
	FUNC5(&bsg_mutex);
	bcd = FUNC3(&bsg_minor_idr, FUNC4(inode));

	if (!bcd) {
		bd = FUNC0(-ENODEV);
		goto out_unlock;
	}

	bd = FUNC1(FUNC4(inode), bcd->queue);
	if (!bd)
		bd = FUNC2(inode, bcd->queue, file);

out_unlock:
	FUNC6(&bsg_mutex);
	return bd;
}