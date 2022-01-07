
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int * ops; } ;
struct dev_ops {int (* open ) (int,int,struct fd*) ;int fd; } ;


 int DEV_BLOCK ;
 int _ENXIO ;
 struct dev_ops** block_devs ;
 struct dev_ops** char_devs ;
 int stub1 (int,int,struct fd*) ;

int dev_open(int major, int minor, int type, struct fd *fd) {
    struct dev_ops *dev = (type == DEV_BLOCK ? block_devs : char_devs)[major];
    if (dev == ((void*)0))
        return _ENXIO;
    fd->ops = &dev->fd;
    if (!dev->open)
        return 0;
    return dev->open(major, minor, fd);
}
