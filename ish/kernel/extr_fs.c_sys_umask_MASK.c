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
struct fs_info {int umask; int /*<<< orphan*/  lock; } ;
typedef  int mode_t_ ;
typedef  int dword_t ;
struct TYPE_2__ {struct fs_info* fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

dword_t FUNC3(dword_t mask) {
    FUNC0("umask(0%o)", mask);
    struct fs_info *fs = current->fs;
    FUNC1(&fs->lock);
    mode_t_ old_umask = fs->umask;
    fs->umask = ((mode_t_) mask) & 0777;
    FUNC2(&fs->lock);
    return old_umask;
}