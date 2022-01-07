
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_all_uri_foreach (int ,int ) ;
 int cache_uri_acounters_clear ;
 int cgsl_order_top ;

void cache_clear_all_acounters (void) {
  cache_all_uri_foreach (cache_uri_acounters_clear, cgsl_order_top);
}
