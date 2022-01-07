
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int field ;
struct TYPE_6__ {scalar_t__ tn; } ;
typedef TYPE_1__ event_dump ;
typedef int event ;


 int assert (int) ;
 int * create_event (TYPE_1__*) ;
 int event_dump_from_event (TYPE_1__*,int *,int,int *) ;
 scalar_t__ event_dump_from_field (TYPE_1__*,int *,int,int *) ;
 int event_dump_init (TYPE_1__*,int) ;
 int tmp_mem_init () ;

event *event_update_php (event *e, field *f, int fn, int type_id) {
  if (fn == 0) {
    return e;
  }

  tmp_mem_init();

  event_dump d;
  event_dump_init (&d, type_id);

  int i;
  for (i = 0; i < fn; i++) {
    if (event_dump_from_field (&d, &f[i], type_id, e) < 0) {
      return ((void*)0);
    }
  }

  if (d.tn) {
    assert (event_dump_from_event (&d, e, type_id, ((void*)0)) > -1);

    e = create_event (&d);
    assert (e != ((void*)0));
  }
  return e;
}
