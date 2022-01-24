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
struct inode_data {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 struct inode_data* FUNC0 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inodes_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct mount *mount, ino_t ino) {
    FUNC1(&inodes_lock);
    struct inode_data *inode = FUNC0(mount, ino);
    FUNC2(&inodes_lock);
    return inode == NULL;
}