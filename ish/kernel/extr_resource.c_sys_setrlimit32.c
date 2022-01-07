
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit_ {int max; int cur; } ;
typedef int dword_t ;
typedef int addr_t ;


 int STRACE (char*,int,int ,int ) ;
 int _EFAULT ;
 int check_setrlimit (int,struct rlimit_) ;
 int current ;
 int rlimit_set (int ,int,struct rlimit_) ;
 scalar_t__ user_get (int ,struct rlimit_) ;

dword_t sys_setrlimit32(dword_t resource, addr_t rlim_addr) {
    struct rlimit_ rlimit;
    if (user_get(rlim_addr, rlimit))
        return _EFAULT;
    STRACE("setrlimit(%d, {cur=%#x, max=%#x})", resource, rlimit.cur, rlimit.max);
    int err = check_setrlimit(resource, rlimit);
    if (err < 0)
        return err;
    return rlimit_set(current, resource, rlimit);
}
