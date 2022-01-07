
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int refcount; } ;



struct fd *fd_retain(struct fd *fd) {
    fd->refcount++;
    return fd;
}
