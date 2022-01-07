
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_15_1_x {int dummy; } ;


 int stsi (struct sysinfo_15_1_x*,int,int,int ) ;
 int topology_mnest_limit () ;

void store_topology(struct sysinfo_15_1_x *info)
{
 stsi(info, 15, 1, topology_mnest_limit());
}
