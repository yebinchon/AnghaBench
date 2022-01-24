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
struct TYPE_2__ {int (* unlink ) (struct mount*,char*) ;} ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  N_SYMLINK_NOFOLLOW ; 
 struct mount* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int FUNC2 (struct fd*,char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mount*,char*) ; 

int FUNC4(struct fd *at, const char *path_raw) {
    char path[MAX_PATH];
    int err = FUNC2(at, path_raw, path, N_SYMLINK_NOFOLLOW);
    if (err < 0)
        return err;
    struct mount *mount = FUNC0(path);
    err = mount->fs->unlink(mount, path);
    FUNC1(mount);
    return err;
}