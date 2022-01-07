
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long cluster_id; } ;


 TYPE_1__* CC ;
 long long CLUSTER_MASK ;
 TYPE_1__** Clusters ;
 int max_cluster ;

int choose_cluster_f (long long local_id) {
  int i;
  for (i = 0; i < max_cluster; i++) if (Clusters[i] && (Clusters[i]->cluster_id & CLUSTER_MASK) == (local_id & CLUSTER_MASK)) {
    CC = Clusters[i];
    return i;
  }
  return -1;
}
