
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stats_buff ;
 int tl_store_stats (int ,int ) ;
 int weights_prepare_stats (int ) ;

__attribute__((used)) static void weights_stats (void) {
  weights_prepare_stats (0);
  tl_store_stats (stats_buff, 0);
}
