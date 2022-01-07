
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stats_buff ;
 int stats_prepare_stats (int ) ;
 int tl_store_stats (int ,int ) ;

void statsx_stats (void) {
  stats_prepare_stats (0);
  tl_store_stats (stats_buff, 0);
}
