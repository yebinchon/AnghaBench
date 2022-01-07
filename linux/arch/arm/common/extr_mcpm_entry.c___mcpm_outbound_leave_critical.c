
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* clusters; } ;
struct TYPE_3__ {int cluster; } ;


 int dmb () ;
 TYPE_2__ mcpm_sync ;
 int sev () ;
 int sync_cache_w (int*) ;

__attribute__((used)) static void __mcpm_outbound_leave_critical(unsigned int cluster, int state)
{
 dmb();
 mcpm_sync.clusters[cluster].cluster = state;
 sync_cache_w(&mcpm_sync.clusters[cluster].cluster);
 sev();
}
