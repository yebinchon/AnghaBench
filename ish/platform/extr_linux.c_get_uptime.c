
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uptime_info {int load_15m; int load_5m; int load_1m; int uptime_ticks; } ;
struct sysinfo {int * loads; int uptime; } ;


 int sysinfo (struct sysinfo*) ;

struct uptime_info get_uptime() {
    struct sysinfo info;
    sysinfo(&info);
    struct uptime_info uptime = {
        .uptime_ticks = info.uptime,
        .load_1m = info.loads[0],
        .load_5m = info.loads[1],
        .load_15m = info.loads[2],
    };
    return uptime;
}
