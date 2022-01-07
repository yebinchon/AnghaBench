
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flock_ {int pid; int len; int start; int whence; int type; } ;
struct flock32_ {int pid; int len; int start; int whence; int type; } ;
struct fdtable {int cloexec; } ;
struct fd {int refcount; } ;
typedef int flock32 ;
typedef int flock ;
typedef int fd_t ;
typedef int dword_t ;
struct TYPE_2__ {struct fdtable* files; } ;
 int STRACE (char*,int,...) ;
 int _EBADF ;
 int _EFAULT ;
 int _EINVAL ;
 int bit_clear (int,int ) ;
 int bit_set (int,int ) ;
 int bit_test (int,int ) ;
 TYPE_1__* current ;
 struct fd* f_get (int) ;
 int f_install_start (struct fd*,int) ;
 int fcntl_getlk (struct fd*,struct flock_*) ;
 int fcntl_setlk (struct fd*,struct flock_*,int) ;
 int fd_getflags (struct fd*) ;
 int fd_setflags (struct fd*,int) ;
 int user_read (int,struct flock_*,int) ;
 int user_write (int,struct flock_*,int) ;

dword_t sys_fcntl(fd_t f, dword_t cmd, dword_t arg) {
    struct fdtable *table = current->files;
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    struct flock32_ flock32;
    struct flock_ flock;
    fd_t new_f;
    int err;
    switch (cmd) {
        case 139:
            STRACE("fcntl(%d, F_DUPFD, %d)", f, arg);
            fd->refcount++;
            return f_install_start(fd, arg);

        case 138:
            STRACE("fcntl(%d, F_DUPFD_CLOEXEC, %d)", f, arg);
            fd->refcount++;
            new_f = f_install_start(fd, arg);
            bit_set(new_f, table->cloexec);
            return new_f;

        case 137:
            STRACE("fcntl(%d, F_GETFD)", f);
            return bit_test(f, table->cloexec);
        case 133:
            STRACE("fcntl(%d, F_SETFD, 0x%x)", f, arg);
            if (arg & 1)
                bit_set(f, table->cloexec);
            else
                bit_clear(f, table->cloexec);
            return 0;

        case 136:
            STRACE("fcntl(%d, F_GETFL)", f);
            return fd_getflags(fd);
        case 132:
            STRACE("fcntl(%d, F_SETFL, %#x)", f, arg);
            return fd_setflags(fd, arg);

        case 134:
            STRACE("fcntl(%d, F_GETLK, %#x)", f, arg);
            if (user_read(arg, &flock32, sizeof(flock32)))
                return _EFAULT;
            flock.type = flock32.type;
            flock.whence = flock32.whence;
            flock.start = flock32.start;
            flock.len = flock32.len;
            flock.pid = flock32.pid;
            err = fcntl_getlk(fd, &flock);
            if (err >= 0) {
                flock32.type = flock.type;
                flock32.whence = flock.whence;
                flock32.start = flock.start;
                flock32.len = flock.len;
                flock32.pid = flock.pid;
                if (user_write(arg, &flock32, sizeof(flock32)))
                    return _EFAULT;
            }
            return err;

        case 135:
            STRACE("fcntl(%d, F_GETLK64, %#x)", f, arg);
            if (user_read(arg, &flock, sizeof(flock)))
                return _EFAULT;
            err = fcntl_getlk(fd, &flock);
            if (err >= 0)
                if (user_write(arg, &flock, sizeof(flock)))
                    return _EFAULT;
            return err;

        case 128:
        case 129:
            STRACE("fcntl(%d, F_SETLK%*s, %#x)", f, cmd == 129, "W", arg);
            if (user_read(arg, &flock32, sizeof(flock32)))
                return _EFAULT;
            flock.type = flock32.type;
            flock.whence = flock32.whence;
            flock.start = flock32.start;
            flock.len = flock32.len;
            flock.pid = flock32.pid;
            return fcntl_setlk(fd, &flock, cmd == 130);

        case 131:
        case 130:
            STRACE("fcntl(%d, F_SETLK%*s64, %#x)", f, cmd == 129, "W", arg);
            if (user_read(arg, &flock, sizeof(flock)))
                return _EFAULT;
            return fcntl_setlk(fd, &flock, cmd == 129);

        default:
            STRACE("fcntl(%d, %d)", f, cmd);
            return _EINVAL;
    }
}
