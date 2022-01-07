
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* ops; int type; } ;
typedef size_t int_t ;
typedef int fd_t ;
typedef size_t dword_t ;
typedef int addr_t ;
struct TYPE_2__ {size_t (* read ) (struct fd*,char*,size_t) ;} ;


 int STRACE (char*,char*,...) ;
 scalar_t__ S_ISDIR (int ) ;
 size_t _EBADF ;
 size_t _EFAULT ;
 size_t _EISDIR ;
 size_t _ENOMEM ;
 struct fd* f_get (int ) ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 size_t stub1 (struct fd*,char*,size_t) ;
 scalar_t__ user_write (int ,char*,size_t) ;

dword_t sys_read(fd_t fd_no, addr_t buf_addr, dword_t size) {
    STRACE("read(%d, 0x%x, %d)", fd_no, buf_addr, size);
    char *buf = (char *) malloc(size+1);
    if (buf == ((void*)0))
        return _ENOMEM;
    int_t res = 0;
    struct fd *fd = f_get(fd_no);
    if (fd == ((void*)0) || fd->ops->read == ((void*)0)) {
        res = _EBADF;
        goto out;
    }
    if (S_ISDIR(fd->type)) {
        res = _EISDIR;
        goto out;
    }
    res = fd->ops->read(fd, buf, size);
    if (res >= 0) {
        buf[res] = '\0';
        STRACE(" \"%.99s\"", buf);
        if (user_write(buf_addr, buf, res))
            res = _EFAULT;
    }
out:
    free(buf);
    return res;
}
