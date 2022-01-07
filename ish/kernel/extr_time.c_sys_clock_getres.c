
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec_ {int nsec; int sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int dword_t ;
typedef int clockid_t ;
typedef int addr_t ;


 int CLOCK_MONOTONIC ;

 int CLOCK_REALTIME ;

 int STRACE (char*,int,int ) ;
 int _EFAULT ;
 int _EINVAL ;
 int clock_getres (int ,struct timespec*) ;
 int errno_map () ;
 scalar_t__ user_put (int ,struct timespec_) ;

dword_t sys_clock_getres(dword_t clock, addr_t res_addr) {
    STRACE("clock_getres(%d, %#x)", clock, res_addr);
    clockid_t clock_id;
    switch (clock) {
        case 128: clock_id = CLOCK_REALTIME; break;
        case 129: clock_id = CLOCK_MONOTONIC; break;
        default: return _EINVAL;
    }

    struct timespec res;
    int err = clock_getres(clock_id, &res);
    if (err < 0)
        return errno_map();
    struct timespec_ t;
    t.sec = res.tv_sec;
    t.nsec = res.tv_nsec;
    if (user_put(res_addr, t))
        return _EFAULT;
    return 0;
}
