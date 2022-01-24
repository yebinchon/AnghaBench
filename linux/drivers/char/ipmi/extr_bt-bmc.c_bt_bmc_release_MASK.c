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
struct bt_bmc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bt_bmc* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  open_count ; 
 int /*<<< orphan*/  FUNC2 (struct bt_bmc*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct bt_bmc *bt_bmc = FUNC1(file);

	FUNC0(&open_count);
	FUNC2(bt_bmc);
	return 0;
}