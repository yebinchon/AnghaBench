#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode_data {scalar_t__ refcount; int /*<<< orphan*/  lock; TYPE_2__* mount; int /*<<< orphan*/  chain; } ;
struct TYPE_5__ {TYPE_1__* fs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* inode_orphaned ) (TYPE_2__*,struct inode_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode_data*) ; 
 int /*<<< orphan*/  inodes_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct inode_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inode_data *inode) {
    FUNC2(&inodes_lock);
    FUNC2(&inode->lock);
    if (--inode->refcount == 0) {
        FUNC5(&inode->lock);
        FUNC1(&inode->chain);
        FUNC5(&inodes_lock);
        if (inode->mount->fs->inode_orphaned)
            inode->mount->fs->inode_orphaned(inode->mount, inode);
        FUNC3(inode->mount);
        FUNC0(inode);
    } else {
        FUNC5(&inode->lock);
        FUNC5(&inodes_lock);
    }
}