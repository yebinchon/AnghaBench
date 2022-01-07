
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rusage_ {int dummy; } ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* group; } ;
struct TYPE_3__ {int lock; struct rusage_ children_rusage; } ;




 int _EFAULT ;
 int _EINVAL ;
 TYPE_2__* current ;
 int lock (int *) ;
 struct rusage_ rusage_get_current () ;
 int unlock (int *) ;
 scalar_t__ user_put (int ,struct rusage_) ;

dword_t sys_getrusage(dword_t who, addr_t rusage_addr) {
    struct rusage_ rusage;
    switch (who) {
        case 128:
            rusage = rusage_get_current();
            break;
        case 129:
            lock(&current->group->lock);
            rusage = current->group->children_rusage;
            unlock(&current->group->lock);
            break;
        default:
            return _EINVAL;
    }
    if (user_put(rusage_addr, rusage))
        return _EFAULT;
    return 0;
}
