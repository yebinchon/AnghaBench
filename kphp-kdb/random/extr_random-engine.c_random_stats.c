
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random_prepare_stats (int ) ;
 int stats_buff ;
 int tl_store_stats (int ,int ) ;

void random_stats (void) {
  random_prepare_stats (0);
  tl_store_stats (stats_buff, 0);
}
