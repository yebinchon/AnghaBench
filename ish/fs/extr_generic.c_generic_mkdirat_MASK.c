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
typedef  int /*<<< orphan*/  mode_t_ ;
struct TYPE_2__ {int (* mkdir ) (struct mount*,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int MAX_PATH ; 
 int N_PARENT_DIR_WRITE ; 
 int N_SYMLINK_FOLLOW ; 
 struct mount* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int FUNC2 (struct fd*,char const*,char*,int) ; 
 int FUNC3 (struct mount*,char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct fd *at, const char *path_raw, mode_t_ mode) {
    char path[MAX_PATH];
    int err = FUNC2(at, path_raw, path, N_SYMLINK_FOLLOW | N_PARENT_DIR_WRITE);
    if (err < 0)
        return err;
    struct mount *mount = FUNC0(path);
    err = mount->fs->mkdir(mount, path, mode);
    FUNC1(mount);
    return err;
}