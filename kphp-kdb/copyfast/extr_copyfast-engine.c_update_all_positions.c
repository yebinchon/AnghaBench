
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CC ;
 scalar_t__* Clusters ;
 int max_cluster ;
 int update_binlog_position () ;

void update_all_positions (void) {
  int i;
  for (i = 0; i < max_cluster; i++) if (Clusters[i]) {
    CC = Clusters[i];
    update_binlog_position ();
  }
}
