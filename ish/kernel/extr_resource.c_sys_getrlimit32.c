
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit32_ {int dummy; } ;
typedef int dword_t ;
typedef int addr_t ;


 int _EFAULT ;
 int do_getrlimit32 (int,struct rlimit32_*) ;
 scalar_t__ user_put (int ,struct rlimit32_) ;

dword_t sys_getrlimit32(dword_t resource, addr_t rlim_addr) {
    struct rlimit32_ rlimit;
    int err = do_getrlimit32(resource, &rlimit);
    if (err < 0)
        return err;
    if (user_put(rlim_addr, rlimit))
        return _EFAULT;
    return 0;
}
