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
typedef  int /*<<< orphan*/  mode_t_ ;
typedef  int /*<<< orphan*/  dev_t_ ;
struct TYPE_2__ {int (* mknod ) (struct mount*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AT_PWD ; 
 int MAX_PATH ; 
 int N_PARENT_DIR_WRITE ; 
 int N_SYMLINK_NOFOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int _EINVAL ; 
 int _EPERM ; 
 struct mount* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,char*,int) ; 
 int FUNC7 (struct mount*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(const char *path_raw, mode_t_ mode, dev_t_ dev) {
    if (FUNC2(mode) || FUNC3(mode))
        return _EINVAL;
    if (!FUNC8() && (FUNC0(mode) || FUNC1(mode)))
        return _EPERM;

    char path[MAX_PATH];
    int err = FUNC6(AT_PWD, path_raw, path, N_SYMLINK_NOFOLLOW | N_PARENT_DIR_WRITE);
    if (err < 0)
        return err;
    struct mount *mount = FUNC4(path);
    if (mount->fs->mknod == NULL)
        err = _EPERM;
    else
        err = mount->fs->mknod(mount, path, mode, dev);
    FUNC5(mount);
    return err;
}