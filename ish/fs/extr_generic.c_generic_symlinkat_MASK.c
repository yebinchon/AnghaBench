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
struct TYPE_2__ {int (* symlink ) (struct mount*,char const*,char*) ;} ;

/* Variables and functions */
 int MAX_PATH ; 
 int N_PARENT_DIR_WRITE ; 
 int N_SYMLINK_NOFOLLOW ; 
 struct mount* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int FUNC2 (struct fd*,char const*,char*,int) ; 
 int FUNC3 (struct mount*,char const*,char*) ; 

int FUNC4(const char *target, struct fd *at, const char *link_raw) {
    char link[MAX_PATH];
    int err = FUNC2(at, link_raw, link, N_SYMLINK_NOFOLLOW | N_PARENT_DIR_WRITE);
    if (err < 0)
        return err;
    struct mount *mount = FUNC0(link);
    err = mount->fs->symlink(mount, target, link);
    FUNC1(mount);
    return err;
}