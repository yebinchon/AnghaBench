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
struct statbuf {int dummy; } ;
struct mount {TYPE_1__* fs; } ;
struct fd {int dummy; } ;
struct TYPE_2__ {int (* stat ) (struct mount*,char*,struct statbuf*,int) ;} ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  N_SYMLINK_FOLLOW ; 
 int /*<<< orphan*/  N_SYMLINK_NOFOLLOW ; 
 struct mount* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct statbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int FUNC3 (struct fd*,char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mount*,char*,struct statbuf*,int) ; 

int FUNC5(struct fd *at, const char *path_raw, struct statbuf *stat, bool follow_links) {
    char path[MAX_PATH];
    int err = FUNC3(at, path_raw, path, follow_links ? N_SYMLINK_FOLLOW : N_SYMLINK_NOFOLLOW);
    if (err < 0)
        return err;
    struct mount *mount = FUNC0(path);
    FUNC1(stat, 0, sizeof(*stat));
    err = mount->fs->stat(mount, path, stat, follow_links);
    FUNC2(mount);
    return err;
}