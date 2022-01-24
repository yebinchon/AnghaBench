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
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct inode *inode = FUNC0(file);
	int err = FUNC1(file, start, end);
	if (!err) {
		FUNC2(inode);
		err = FUNC4(file, NULL);
		FUNC3(inode);
	}
	return err;
}