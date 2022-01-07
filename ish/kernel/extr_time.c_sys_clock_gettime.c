
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec_ {int nsec; int sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int usec; int sec; } ;
struct rusage_ {TYPE_1__ utime; } ;
typedef int dword_t ;
typedef int clockid_t ;
typedef int addr_t ;


 int CLOCK_MONOTONIC ;

 int CLOCK_PROCESS_CPUTIME_ID_ ;
 int CLOCK_REALTIME ;

 int STRACE (char*,int,int ) ;
 int _EFAULT ;
 int _EINVAL ;
 int clock_gettime (int ,struct timespec*) ;
 int errno_map () ;
 struct rusage_ rusage_get_current () ;
 scalar_t__ user_put (int ,struct timespec_) ;

dword_t sys_clock_gettime(dword_t clock, addr_t tp) {
    STRACE("clock_gettime(%d, 0x%x)", clock, tp);

    struct timespec ts;
    if (clock == CLOCK_PROCESS_CPUTIME_ID_) {

        struct rusage_ rusage = rusage_get_current();
        ts.tv_sec = rusage.utime.sec;
        ts.tv_nsec = rusage.utime.usec * 1000;
    } else {
        clockid_t clock_id;
        switch (clock) {
            case 128: clock_id = CLOCK_REALTIME; break;
            case 129: clock_id = CLOCK_MONOTONIC; break;
            default: return _EINVAL;
        }
        int err = clock_gettime(clock_id, &ts);
        if (err < 0)
            return errno_map();
    }
    struct timespec_ t;
    t.sec = ts.tv_sec;
    t.nsec = ts.tv_nsec;
    if (user_put(tp, t))
        return _EFAULT;
    return 0;
}
