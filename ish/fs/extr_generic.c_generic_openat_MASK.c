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
struct statbuf {int mode; int /*<<< orphan*/  rdev; int /*<<< orphan*/  inode; } ;
struct mount {TYPE_1__* fs; } ;
struct fd {int type; int flags; int /*<<< orphan*/  inode; struct mount* mount; } ;
struct TYPE_2__ {int (* fstat ) (struct fd*,struct statbuf*) ;struct fd* (* open ) (struct mount*,char*,int,int) ;} ;

/* Variables and functions */
 int AC_R ; 
 int AC_W ; 
 int DEV_BLOCK ; 
 int DEV_CHAR ; 
 struct fd* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct fd*) ; 
 int MAX_PATH ; 
 int N_PARENT_DIR_WRITE ; 
 int N_SYMLINK_FOLLOW ; 
 int O_CREAT_ ; 
 int O_DIRECTORY_ ; 
 int O_RDWR_ ; 
 int O_WRONLY_ ; 
 int S_IFMT ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int _EINVAL ; 
 int _EISDIR ; 
 int _ENOTDIR ; 
 int _ENXIO ; 
 int FUNC7 (struct statbuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fd*) ; 
 int /*<<< orphan*/  FUNC12 (struct fd*) ; 
 struct mount* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mount*) ; 
 int FUNC16 (struct fd*,char const*,char*,int) ; 
 struct fd* FUNC17 (struct mount*,char*,int,int) ; 
 int FUNC18 (struct fd*,struct statbuf*) ; 

struct fd *FUNC19(struct fd *at, const char *path_raw, int flags, int mode) {
    if (flags & O_RDWR_ && flags & O_WRONLY_)
        return FUNC0(_EINVAL);

    // TODO really, really, seriously reconsider what I'm doing with the strings
    char path[MAX_PATH];
    int err = FUNC16(at, path_raw, path, N_SYMLINK_FOLLOW |
            (flags & O_CREAT_ ? N_PARENT_DIR_WRITE : 0));
    if (err < 0)
        return FUNC0(err);
    struct mount *mount = FUNC13(path);
    struct fd *fd = mount->fs->open(mount, path, flags, mode);
    if (FUNC1(fd)) {
        // if an error happens after this point, fd_close will release the
        // mount, but right now we need to do it manually
        FUNC15(mount);
        return fd;
    }
    fd->mount = mount;

    struct statbuf stat;
    err = fd->mount->fs->fstat(fd, &stat);
    if (err < 0)
        goto error;
    fd->inode = FUNC14(mount, stat.inode);
    fd->type = stat.mode & S_IFMT;
    fd->flags = flags;

    int accmode;
    if (flags & O_RDWR_) accmode = AC_R | AC_W;
    else if (flags & O_WRONLY_) accmode = AC_W;
    else accmode = AC_R;
    err = FUNC7(&stat, accmode);
    if (err < 0)
        goto error;

    FUNC8(!FUNC5(fd->type)); // would mean path_normalize didn't do its job
    if (FUNC2(fd->type) || FUNC3(fd->type)) {
        int type;
        if (FUNC2(fd->type))
            type = DEV_BLOCK;
        else
            type = DEV_CHAR;
        err = FUNC11(FUNC9(stat.rdev), FUNC10(stat.rdev), type, fd);
        if (err < 0)
            goto error;
    }
    err = _ENXIO;
    if (FUNC6(fd->type))
        goto error;
    err = _EISDIR;
    if (FUNC4(fd->type) && flags & (O_RDWR_ | O_WRONLY_))
        goto error;
    err = _ENOTDIR;
    if (!FUNC4(fd->type) && flags & O_DIRECTORY_)
        goto error;
    return fd;

error:
    FUNC12(fd);
    return FUNC0(err);
}