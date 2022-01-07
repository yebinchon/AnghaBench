
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event ;


 int * dl_malloc (int) ;
 int get_event_size (int *) ;
 int memcpy (int *,int *,int) ;

event *event_dup (event *e) {
  int size = get_event_size (e);
  event *ne = dl_malloc (size);
  memcpy (ne, e, size);
  return ne;
}
