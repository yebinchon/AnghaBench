
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit_ {scalar_t__ cur; int max; } ;
typedef scalar_t__ pid_t_ ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;


 int STRACE (char*,scalar_t__,int) ;
 int _EFAULT ;
 int _EINVAL ;
 int check_setrlimit (int,struct rlimit_) ;
 int current ;
 int rlimit_get (int ,int,struct rlimit_*) ;
 int rlimit_set (int ,int,struct rlimit_) ;
 scalar_t__ user_get (scalar_t__,struct rlimit_) ;
 scalar_t__ user_put (scalar_t__,struct rlimit_) ;

dword_t sys_prlimit64(pid_t_ pid, dword_t resource, addr_t new_limit_addr, addr_t old_limit_addr) {
    STRACE("prlimit64(%d, %d)", pid, resource);
    if (pid != 0)
        return _EINVAL;

    if (old_limit_addr != 0) {
        struct rlimit_ rlimit;
        int err = rlimit_get(current, resource, &rlimit);
        if (err < 0)
            return err;
        STRACE(" old={cur=%#x, max=%#x}", rlimit.cur, rlimit.max);
        if (user_put(old_limit_addr, rlimit))
            return _EFAULT;
    }

    if (new_limit_addr != 0) {
        struct rlimit_ rlimit;
        if (user_get(new_limit_addr, rlimit))
            return _EFAULT;
        STRACE(" new={cur=%#x, max=%#x}", rlimit.cur, rlimit.max);
        int err = check_setrlimit(resource, rlimit);
        if (err < 0)
            return err;
        return rlimit_set(current, resource, rlimit);
    }
    return 0;
}
