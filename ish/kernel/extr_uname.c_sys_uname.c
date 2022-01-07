
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uname {int dummy; } ;
typedef int dword_t ;
typedef int addr_t ;


 int _EFAULT ;
 int do_uname (struct uname*) ;
 scalar_t__ user_put (int ,struct uname) ;

dword_t sys_uname(addr_t uts_addr) {
    struct uname uts;
    do_uname(&uts);
    if (user_put(uts_addr, uts))
        return _EFAULT;
    return 0;
}
