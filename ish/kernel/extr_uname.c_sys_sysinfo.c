
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uptime_info {int load_15m; int load_5m; int load_1m; int uptime_ticks; } ;
struct sys_info {int * loads; int uptime; int member_0; } ;
typedef int dword_t ;
typedef int addr_t ;


 int _EFAULT ;
 struct uptime_info get_uptime () ;
 int sysinfo_specific (struct sys_info*) ;
 scalar_t__ user_put (int ,struct sys_info) ;

dword_t sys_sysinfo(addr_t info_addr) {
    struct sys_info info = {0};
    struct uptime_info uptime = get_uptime();
    info.uptime = uptime.uptime_ticks;
    info.loads[0] = uptime.load_1m;
    info.loads[1] = uptime.load_5m;
    info.loads[2] = uptime.load_15m;
    sysinfo_specific(&info);

    if (user_put(info_addr, info))
        return _EFAULT;
    return 0;
}
