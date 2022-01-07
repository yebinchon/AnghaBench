
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event ;


 int dl_free (int *,long long) ;
 int eq_total ;
 long long events_memory ;
 long long get_event_size (int *) ;

void event_free (event *e) {
  if (e == ((void*)0)) {
    return;
  }

  long long size = get_event_size (e);
  events_memory -= size;

  eq_total--;

  dl_free (e, size);
}
