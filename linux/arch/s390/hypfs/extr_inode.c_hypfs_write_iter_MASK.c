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
struct super_block {int /*<<< orphan*/  s_root; struct hypfs_sb_info* s_fs_info; } ;
struct kiocb {int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct hypfs_sb_info {scalar_t__ last_update; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MACHINE_IS_VM ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iov_iter*,size_t) ; 
 size_t FUNC6 (struct iov_iter*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static ssize_t FUNC11(struct kiocb *iocb, struct iov_iter *from)
{
	int rc;
	struct super_block *sb = FUNC0(iocb->ki_filp)->i_sb;
	struct hypfs_sb_info *fs_info = sb->s_fs_info;
	size_t count = FUNC6(from);

	/*
	 * Currently we only allow one update per second for two reasons:
	 * 1. diag 204 is VERY expensive
	 * 2. If several processes do updates in parallel and then read the
	 *    hypfs data, the likelihood of collisions is reduced, if we restrict
	 *    the minimum update interval. A collision occurs, if during the
	 *    data gathering of one process another process triggers an update
	 *    If the first process wants to ensure consistent data, it has
	 *    to restart data collection in this case.
	 */
	FUNC8(&fs_info->lock);
	if (fs_info->last_update == FUNC7()) {
		rc = -EBUSY;
		goto out;
	}
	FUNC1(sb->s_root);
	if (MACHINE_IS_VM)
		rc = FUNC4(sb->s_root);
	else
		rc = FUNC2(sb->s_root);
	if (rc) {
		FUNC10("Updating the hypfs tree failed\n");
		FUNC1(sb->s_root);
		goto out;
	}
	FUNC3(sb);
	rc = count;
	FUNC5(from, count);
out:
	FUNC9(&fs_info->lock);
	return rc;
}