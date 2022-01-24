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
struct fs_info {scalar_t__ refcount; int /*<<< orphan*/  root; int /*<<< orphan*/  pwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_info*) ; 

void FUNC2(struct fs_info *fs) {
    if (--fs->refcount == 0) {
        FUNC0(fs->pwd);
        FUNC0(fs->root);
        FUNC1(fs);
    }
}