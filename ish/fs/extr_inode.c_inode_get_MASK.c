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
struct mount {int dummy; } ;
struct inode_data {size_t number; int /*<<< orphan*/  lock; scalar_t__ refcount; int /*<<< orphan*/  chain; int /*<<< orphan*/  posix_locks; int /*<<< orphan*/  posix_unlock; scalar_t__ socket_id; struct mount* mount; } ;
typedef  size_t ino_t ;

/* Variables and functions */
 size_t INODES_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inode_data* FUNC1 (struct mount*,size_t) ; 
 int /*<<< orphan*/ * inodes_hash ; 
 int /*<<< orphan*/  inodes_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct inode_data* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct inode_data *FUNC9(struct mount *mount, ino_t ino) {
    FUNC4(&inodes_lock);
    struct inode_data *inode = FUNC1(mount, ino);
    if (inode == NULL) {
        inode = FUNC6(sizeof(struct inode_data));
        inode->refcount = 0;
        inode->number = ino;
        FUNC7(mount);
        inode->mount = mount;
        inode->socket_id = 0;
        FUNC0(&inode->posix_unlock);
        FUNC3(&inode->posix_locks);
        FUNC3(&inode->chain);
        FUNC5(&inode->lock);
        FUNC2(&inodes_hash[ino % INODES_HASH_SIZE], &inode->chain);
    }

    FUNC4(&inode->lock);
    inode->refcount++;
    FUNC8(&inode->lock);
    FUNC8(&inodes_lock);
    return inode;
}