
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t_ ;
typedef int int_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int ngroups; int groups; } ;


 int _EFAULT ;
 int _EINVAL ;
 TYPE_1__* current ;
 scalar_t__ user_write (int ,int ,int) ;

int_t sys_getgroups(dword_t size, addr_t list) {
    if (size == 0)
        return current->ngroups;
    if (size < current->ngroups)
        return _EINVAL;
    if (user_write(list, current->groups, size * sizeof(uid_t_)))
        return _EFAULT;
    return 0;
}
