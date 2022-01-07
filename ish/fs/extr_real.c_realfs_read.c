
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ errno_map () ;
 scalar_t__ read (int ,void*,size_t) ;

ssize_t realfs_read(struct fd *fd, void *buf, size_t bufsize) {
    ssize_t res = read(fd->real_fd, buf, bufsize);
    if (res < 0)
        return errno_map();
    return res;
}
