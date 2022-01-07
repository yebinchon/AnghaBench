
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec_ {unsigned int len; int base; } ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int _EFAULT ;
 int _ENOMEM ;
 int free (struct iovec_*) ;
 struct iovec_* malloc (int) ;
 int sys_write (int ,int ,unsigned int) ;
 scalar_t__ user_read (int ,struct iovec_*,int) ;

dword_t sys_writev(fd_t fd_no, addr_t iovec_addr, dword_t iovec_count) {
    dword_t iovec_size = sizeof(struct iovec_) * iovec_count;
    struct iovec_ *iovecs = malloc(iovec_size);
    if (iovecs == ((void*)0))
        return _ENOMEM;
    int res = 0;
    if (user_read(iovec_addr, iovecs, iovec_size)) {
        res = _EFAULT;
        goto err;
    }
    dword_t count = 0;
    for (unsigned i = 0; i < iovec_count; i++) {
        res = sys_write(fd_no, iovecs[i].base, iovecs[i].len);
        if (res < 0)
            goto err;
        count += res;
        if ((unsigned) res < iovecs[i].len)
            break;
    }
    free(iovecs);
    return count;

err:
    free(iovecs);
    return res;
}
