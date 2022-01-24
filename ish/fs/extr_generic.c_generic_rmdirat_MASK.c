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
struct mount {TYPE_1__* fs; } ;
struct fd {int dummy; } ;
struct TYPE_2__ {int (* rmdir ) (struct mount*,char*) ;} ;

/* Variables and functions */
 int MAX_PATH ; 
 int N_PARENT_DIR_WRITE ; 
 int N_SYMLINK_FOLLOW ; 
 int _EBUSY ; 
 scalar_t__ FUNC0 (char*) ; 
 struct mount* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int FUNC3 (struct fd*,char const*,char*,int) ; 
 int FUNC4 (struct mount*,char*) ; 

int FUNC5(struct fd *at, const char *path_raw) {
    char path[MAX_PATH];
    int err = FUNC3(at, path_raw, path, N_SYMLINK_FOLLOW | N_PARENT_DIR_WRITE);
    if (err < 0)
        return err;
    if (FUNC0(path))
        return _EBUSY;
    struct mount *mount = FUNC1(path);
    err = mount->fs->rmdir(mount, path);
    FUNC2(mount);
    return err;
}