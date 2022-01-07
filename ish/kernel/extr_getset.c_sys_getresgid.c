
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int_t ;
typedef int addr_t ;
struct TYPE_2__ {int sgid; int egid; int gid; } ;


 int STRACE (char*,int ,int ,int ) ;
 int _EFAULT ;
 TYPE_1__* current ;
 scalar_t__ user_put (int ,int ) ;

int_t sys_getresgid(addr_t rgid_addr, addr_t egid_addr, addr_t sgid_addr) {
    STRACE("getresgid(%#x, %#x, %#x)", rgid_addr, egid_addr, sgid_addr);
    if (user_put(rgid_addr, current->gid))
        return _EFAULT;
    if (user_put(egid_addr, current->egid))
        return _EFAULT;
    if (user_put(sgid_addr, current->sgid))
        return _EFAULT;
    return 0;
}
