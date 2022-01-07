
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_ops {int dummy; } ;
struct TYPE_2__ {int devs_lock; struct dev_ops** devs; } ;


 int DEV_CHAR ;
 int DYN_DEV_MAJOR ;
 int MAX_MINOR ;
 int _EEXIST ;
 int _EINVAL ;
 TYPE_1__ dyn_info_char ;
 int lock (int *) ;
 int unlock (int *) ;

int dyn_dev_register(struct dev_ops *ops, int type, int major, int minor) {

    if (minor < 0 || minor > MAX_MINOR) {
        return _EINVAL;
    }
    if (major != DYN_DEV_MAJOR) {
        return _EINVAL;
    }
    if (ops == ((void*)0)) {
        return _EINVAL;
    }
    if (type != DEV_CHAR) {
        return _EINVAL;
    }

    lock(&dyn_info_char.devs_lock);


    if (dyn_info_char.devs[minor] != ((void*)0)) {
        unlock(&dyn_info_char.devs_lock);
        return _EEXIST;
    }

    dyn_info_char.devs[minor] = ops;
    unlock(&dyn_info_char.devs_lock);

    return 0;
}
