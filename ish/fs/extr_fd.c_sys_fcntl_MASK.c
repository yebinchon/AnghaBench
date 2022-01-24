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
struct flock_ {int /*<<< orphan*/  pid; int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  whence; int /*<<< orphan*/  type; } ;
struct flock32_ {int /*<<< orphan*/  pid; int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  whence; int /*<<< orphan*/  type; } ;
struct fdtable {int /*<<< orphan*/  cloexec; } ;
struct fd {int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  flock32 ;
typedef  int /*<<< orphan*/  flock ;
typedef  int fd_t ;
typedef  int dword_t ;
struct TYPE_2__ {struct fdtable* files; } ;

/* Variables and functions */
#define  F_DUPFD_ 139 
#define  F_DUPFD_CLOEXEC_ 138 
#define  F_GETFD_ 137 
#define  F_GETFL_ 136 
#define  F_GETLK64_ 135 
#define  F_GETLK_ 134 
#define  F_SETFD_ 133 
#define  F_SETFL_ 132 
#define  F_SETLK64_ 131 
#define  F_SETLKW64_ 130 
#define  F_SETLKW_ 129 
#define  F_SETLK_ 128 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int _EBADF ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct fd* FUNC4 (int) ; 
 int FUNC5 (struct fd*,int) ; 
 int FUNC6 (struct fd*,struct flock_*) ; 
 int FUNC7 (struct fd*,struct flock_*,int) ; 
 int FUNC8 (struct fd*) ; 
 int FUNC9 (struct fd*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct flock_*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct flock_*,int) ; 

dword_t FUNC12(fd_t f, dword_t cmd, dword_t arg) {
    struct fdtable *table = current->files;
    struct fd *fd = FUNC4(f);
    if (fd == NULL)
        return _EBADF;
    struct flock32_ flock32;
    struct flock_ flock;
    fd_t new_f;
    int err;
    switch (cmd) {
        case F_DUPFD_:
            FUNC0("fcntl(%d, F_DUPFD, %d)", f, arg);
            fd->refcount++;
            return FUNC5(fd, arg);

        case F_DUPFD_CLOEXEC_:
            FUNC0("fcntl(%d, F_DUPFD_CLOEXEC, %d)", f, arg);
            fd->refcount++;
            new_f = FUNC5(fd, arg);
            FUNC2(new_f, table->cloexec);
            return new_f;

        case F_GETFD_:
            FUNC0("fcntl(%d, F_GETFD)", f);
            return FUNC3(f, table->cloexec);
        case F_SETFD_:
            FUNC0("fcntl(%d, F_SETFD, 0x%x)", f, arg);
            if (arg & 1)
                FUNC2(f, table->cloexec);
            else
                FUNC1(f, table->cloexec);
            return 0;

        case F_GETFL_:
            FUNC0("fcntl(%d, F_GETFL)", f);
            return FUNC8(fd);
        case F_SETFL_:
            FUNC0("fcntl(%d, F_SETFL, %#x)", f, arg);
            return FUNC9(fd, arg);

        case F_GETLK_:
            FUNC0("fcntl(%d, F_GETLK, %#x)", f, arg);
            if (FUNC10(arg, &flock32, sizeof(flock32)))
                return _EFAULT;
            flock.type = flock32.type;
            flock.whence = flock32.whence;
            flock.start = flock32.start;
            flock.len = flock32.len;
            flock.pid = flock32.pid;
            err = FUNC6(fd, &flock);
            if (err >= 0) {
                flock32.type = flock.type;
                flock32.whence = flock.whence;
                flock32.start = flock.start;
                flock32.len = flock.len;
                flock32.pid = flock.pid;
                if (FUNC11(arg, &flock32, sizeof(flock32)))
                    return _EFAULT;
            }
            return err;

        case F_GETLK64_:
            FUNC0("fcntl(%d, F_GETLK64, %#x)", f, arg);
            if (FUNC10(arg, &flock, sizeof(flock)))
                return _EFAULT;
            err = FUNC6(fd, &flock);
            if (err >= 0)
                if (FUNC11(arg, &flock, sizeof(flock)))
                    return _EFAULT;
            return err;

        case F_SETLK_:
        case F_SETLKW_:
            FUNC0("fcntl(%d, F_SETLK%*s, %#x)", f, cmd == F_SETLKW_, "W", arg);
            if (FUNC10(arg, &flock32, sizeof(flock32)))
                return _EFAULT;
            flock.type = flock32.type;
            flock.whence = flock32.whence;
            flock.start = flock32.start;
            flock.len = flock32.len;
            flock.pid = flock32.pid;
            return FUNC7(fd, &flock, cmd == F_SETLKW64_);

        case F_SETLK64_:
        case F_SETLKW64_:
            FUNC0("fcntl(%d, F_SETLK%*s64, %#x)", f, cmd == F_SETLKW_, "W", arg);
            if (FUNC10(arg, &flock, sizeof(flock)))
                return _EFAULT;
            return FUNC7(fd, &flock, cmd == F_SETLKW_);

        default:
            FUNC0("fcntl(%d, %d)", f, cmd);
            return _EINVAL;
    }
}