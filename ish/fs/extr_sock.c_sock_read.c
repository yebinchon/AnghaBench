
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef int ssize_t ;


 int realfs_read (struct fd*,void*,size_t) ;
 int sock_translate_err (struct fd*,int*) ;

__attribute__((used)) static ssize_t sock_read(struct fd *fd, void *buf, size_t size) {
    int err = realfs_read(fd, buf, size);
    sock_translate_err(fd, &err);
    return err;
}
