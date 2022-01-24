#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int /*<<< orphan*/  private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_private; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  hcall_inst_seq_ops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	int rc;
	struct seq_file *seq;

	rc = FUNC1(file, &hcall_inst_seq_ops);
	seq = file->private_data;
	seq->private = FUNC0(file)->i_private;

	return rc;
}