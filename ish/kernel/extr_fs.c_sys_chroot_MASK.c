#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct fd* root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fd*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (struct fd*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  _EFAULT ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (struct fd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fd* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC8(addr_t path_addr) {
    char path[MAX_PATH];
    if (FUNC7(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC2("chroot(\"%s\")", path);

    struct fd *dir = FUNC5(path);
    if (FUNC0(dir))
        return FUNC1(dir);
    FUNC4(&current->fs->lock);
    FUNC3(current->fs->root);
    current->fs->root = dir;
    FUNC6(&current->fs->lock);
    return 0;
}