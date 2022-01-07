
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec_ {int dummy; } ;
struct timespec {int dummy; } ;
typedef int fd_t ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;


 int _EFAULT ;
 struct timespec convert_timespec (struct timespec_) ;
 int sys_utime_common (int ,scalar_t__,struct timespec,struct timespec,int ) ;
 struct timespec timespec_now () ;
 scalar_t__ user_get (scalar_t__,struct timespec_*) ;

dword_t sys_utimensat(fd_t at_f, addr_t path_addr, addr_t times_addr, dword_t flags) {
    struct timespec atime;
    struct timespec mtime;
    if (times_addr == 0) {
        atime = mtime = timespec_now();
    } else {
        struct timespec_ times[2];
        if (user_get(times_addr, times))
            return _EFAULT;
        atime = convert_timespec(times[0]);
        mtime = convert_timespec(times[1]);
    }
    return sys_utime_common(at_f, path_addr, atime, mtime, flags);
}
