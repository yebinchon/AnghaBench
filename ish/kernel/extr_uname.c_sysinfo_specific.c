
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int mem_unit; int freehigh; int totalhigh; int procs; int freeswap; int totalswap; int sharedram; int freeram; int totalram; } ;
struct sys_info {int mem_unit; int freehigh; int totalhigh; int procs; int freeswap; int totalswap; int sharedram; int freeram; int totalram; } ;


 int sysinfo (struct sysinfo*) ;

__attribute__((used)) static void sysinfo_specific(struct sys_info *info) {
    struct sysinfo host_info;
    sysinfo(&host_info);
    info->totalram = host_info.totalram;
    info->freeram = host_info.freeram;
    info->sharedram = host_info.sharedram;
    info->totalswap = host_info.totalswap;
    info->freeswap = host_info.freeswap;
    info->procs = host_info.procs;
    info->totalhigh = host_info.totalhigh;
    info->freehigh = host_info.freehigh;
    info->mem_unit = host_info.mem_unit;
}
