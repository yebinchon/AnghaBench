
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mc_cluster {int a_timeouts; int a_sbytes; int a_rbytes; int a_req; } ;
struct TYPE_2__ {int clusters_num; struct mc_cluster* Clusters; } ;


 int AMORT_FACTOR ;
 TYPE_1__* CurConf ;

void adjust_cluster_stats (void) {
  int i;
  struct mc_cluster *C = CurConf->Clusters;
  for (i = 0; i < CurConf->clusters_num; i++, C++) {
    C->a_req *= AMORT_FACTOR;
    C->a_rbytes *= AMORT_FACTOR;
    C->a_sbytes *= AMORT_FACTOR;
    C->a_timeouts *= AMORT_FACTOR;
  }
}
