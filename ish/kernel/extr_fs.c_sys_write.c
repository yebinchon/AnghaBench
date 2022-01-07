
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* ops; } ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int (* write ) (struct fd*,char*,int) ;} ;


 int STRACE (char*,int ,char*,int) ;
 int _EBADF ;
 int _EFAULT ;
 int _ENOMEM ;
 struct fd* f_get (int ) ;
 int free (char*) ;
 char* malloc (int) ;
 int stub1 (struct fd*,char*,int) ;
 scalar_t__ user_read (int ,char*,int) ;

dword_t sys_write(fd_t fd_no, addr_t buf_addr, dword_t size) {

    char *buf = malloc(size + 1);
    if (buf == ((void*)0))
        return _ENOMEM;
    dword_t res = 0;
    if (user_read(buf_addr, buf, size)) {
        res = _EFAULT;
        goto out;
    }
    buf[size] = '\0';
    STRACE("write(%d, \"%.100s\", %d)", fd_no, buf, size);
    struct fd *fd = f_get(fd_no);
    if (fd == ((void*)0) || fd->ops->write == ((void*)0)) {
        res = _EBADF;
        goto out;
    }
    res = fd->ops->write(fd, buf, size);
out:
    free(buf);
    return res;
}
