
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event ;


 int dl_free (int *,size_t) ;
 scalar_t__ dl_get_memory_used () ;
 int events_cnt ;
 int events_memory ;
 size_t get_event_size (int *) ;

void event_free (event *e) {
  size_t l = get_event_size (e);

  events_cnt--;

  events_memory -= dl_get_memory_used();
  dl_free (e, l);
  events_memory += dl_get_memory_used();
}
