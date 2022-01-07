
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int * ops; } ;
struct dev_ops {int (* open ) (int,int,struct fd*) ;int fd; } ;
struct TYPE_2__ {struct dev_ops** devs; } ;


 int DEV_CHAR ;
 int DYN_DEV_MAJOR ;
 int _ENXIO ;
 int assert (int) ;
 TYPE_1__ dyn_info_char ;
 int stub1 (int,int,struct fd*) ;

__attribute__((used)) static int dyn_open(int type, int major, int minor, struct fd *fd) {
    assert(type == DEV_CHAR);
    assert(major == DYN_DEV_MAJOR);

    struct dev_ops *ops = dyn_info_char.devs[minor];
    if (ops == ((void*)0)) {
        return _ENXIO;
    }
    fd->ops = &ops->fd;


    if (!ops->open)
        return 0;
    return ops->open(major, minor, fd);
}
