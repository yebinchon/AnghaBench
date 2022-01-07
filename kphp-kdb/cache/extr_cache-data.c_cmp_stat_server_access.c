
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ access_queries; } ;
typedef TYPE_1__ cache_stat_server_t ;


 int cmp_stat_server_id (void const*,void const*) ;

__attribute__((used)) static int cmp_stat_server_access (const void *x, const void *y) {
  cache_stat_server_t *a = *(cache_stat_server_t **) x;
  cache_stat_server_t *b = *(cache_stat_server_t **) y;
  if (a->access_queries > b->access_queries) {
    return -1;
  }
  if (a->access_queries < b->access_queries) {
    return 1;
  }
  return cmp_stat_server_id (x, y);
}
