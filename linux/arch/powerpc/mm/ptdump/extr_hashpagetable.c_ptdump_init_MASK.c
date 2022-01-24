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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dentry* FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ptdump_fops ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(void)
{
	struct dentry *debugfs_file;

	if (!FUNC2()) {
		FUNC1();
		debugfs_file = FUNC0("kernel_hash_pagetable",
				0400, NULL, NULL, &ptdump_fops);
		return debugfs_file ? 0 : -ENOMEM;
	}
	return 0;
}