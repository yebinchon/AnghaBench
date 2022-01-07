
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_all_uri_uncached_foreach (int ,int ) ;
 int cache_uri_dump_uncached ;
 int cgsl_order_top ;

__attribute__((used)) static void cache_dump_uncached_uries (void) {
  cache_all_uri_uncached_foreach (cache_uri_dump_uncached, cgsl_order_top);
}
