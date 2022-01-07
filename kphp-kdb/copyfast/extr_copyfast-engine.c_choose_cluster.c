
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long node_id; } ;


 TYPE_1__* CC ;
 TYPE_1__** Clusters ;
 int max_cluster ;

int choose_cluster (long long local_id) {
  int i;
  for (i = 0; i < max_cluster; i++) if (Clusters[i] && Clusters[i]->node_id == local_id) {
    CC = Clusters[i];
    return i;
  }
  return -1;
}
