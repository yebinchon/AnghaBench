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
struct fs_info {int refcount; int /*<<< orphan*/  lock; int /*<<< orphan*/ * root; int /*<<< orphan*/  pwd; scalar_t__ umask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fs_info* FUNC1 (int) ; 

struct fs_info *FUNC2() {
    struct fs_info *fs = FUNC1(sizeof(struct fs_info));
    if (fs == NULL)
        return NULL;
    fs->refcount = 1;
    fs->umask = 0;
    fs->pwd = *(fs->root = NULL);
    FUNC0(&fs->lock);
    return fs;
}