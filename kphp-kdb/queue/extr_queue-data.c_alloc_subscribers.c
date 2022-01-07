
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subscribers ;


 scalar_t__ dl_get_memory_used () ;
 int * dl_malloc0 (int) ;
 int subscribers_cnt ;
 int subscribers_memory ;

subscribers *alloc_subscribers (void) {
  subscribers_cnt++;

  subscribers_memory -= dl_get_memory_used();
  subscribers *res = dl_malloc0 (sizeof (subscribers));
  subscribers_memory += dl_get_memory_used();

  return res;
}
