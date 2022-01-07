
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {int dummy; } ;


 int CACHE_MAX_LOCAL_COPIES ;
 scalar_t__ LC ;
 int amortization_counter_update (int ,struct amortization_counter*) ;
 int cache_heap_insert (int ,struct cache_uri*) ;
 int cache_local_copy_unpack (struct cache_uri*,scalar_t__,int ,int ,int *) ;
 scalar_t__ cache_uri_local_copy_disk_filter_match (scalar_t__,int *) ;
 int disk_filter ;
 size_t heap_acounter_off ;
 int heap_foreach ;
 int tbl_foreach ;
 int uri_off ;
 int vkprintf (int,char*,int *) ;

__attribute__((used)) static void cache_heap_insert_uri_from_given_disk (struct cache_uri *U) {
  vkprintf (4, "cache_heap_insert_uri_from_given_disk (%s)\n", U->data + uri_off);
  int i;
  const int n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 0, ((void*)0));
  if (n < 0) {
    return;
  }
  for (i = 0; i < n; i++) {
    if (cache_uri_local_copy_disk_filter_match (LC + i, &disk_filter)) {
      struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
      amortization_counter_update (tbl_foreach, C);
      cache_heap_insert (heap_foreach, U);
      return;
    }
  }
}
