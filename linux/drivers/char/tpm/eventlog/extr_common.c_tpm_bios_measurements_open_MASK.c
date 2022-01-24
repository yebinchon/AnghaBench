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
struct tpm_chip_seqops {struct tpm_chip* chip; struct seq_operations* seqops; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct seq_operations {int dummy; } ;
struct seq_file {struct tpm_chip* private; } ;
struct inode {scalar_t__ i_private; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,struct seq_operations const*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode,
					    struct file *file)
{
	int err;
	struct seq_file *seq;
	struct tpm_chip_seqops *chip_seqops;
	const struct seq_operations *seqops;
	struct tpm_chip *chip;

	FUNC1(inode);
	if (!inode->i_private) {
		FUNC2(inode);
		return -ENODEV;
	}
	chip_seqops = (struct tpm_chip_seqops *)inode->i_private;
	seqops = chip_seqops->seqops;
	chip = chip_seqops->chip;
	FUNC0(&chip->dev);
	FUNC2(inode);

	/* now register seq file */
	err = FUNC3(file, seqops);
	if (!err) {
		seq = file->private_data;
		seq->private = chip;
	}

	return err;
}