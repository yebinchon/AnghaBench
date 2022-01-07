
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* clusters; } ;
struct TYPE_3__ {int cluster; } ;


 TYPE_2__ mcpm_sync ;
 int sync_cache_r (int*) ;

__attribute__((used)) static int __mcpm_cluster_state(unsigned int cluster)
{
 sync_cache_r(&mcpm_sync.clusters[cluster].cluster);
 return mcpm_sync.clusters[cluster].cluster;
}
