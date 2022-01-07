
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int_t ;
typedef int addr_t ;
struct TYPE_2__ {int suid; int euid; int uid; } ;


 int STRACE (char*,int ,int ,int ) ;
 int _EFAULT ;
 TYPE_1__* current ;
 scalar_t__ user_put (int ,int ) ;

int_t sys_getresuid(addr_t ruid_addr, addr_t euid_addr, addr_t suid_addr) {
    STRACE("getresuid(%#x, %#x, %#x)", ruid_addr, euid_addr, suid_addr);
    if (user_put(ruid_addr, current->uid))
        return _EFAULT;
    if (user_put(euid_addr, current->euid))
        return _EFAULT;
    if (user_put(suid_addr, current->suid))
        return _EFAULT;
    return 0;
}
