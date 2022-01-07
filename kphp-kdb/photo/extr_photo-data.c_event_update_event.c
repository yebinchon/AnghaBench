
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tn; } ;
typedef TYPE_1__ event_dump ;
typedef int event ;


 int assert (int) ;
 int * create_event (TYPE_1__*) ;
 int event_dump_from_event (TYPE_1__*,int *,int,int *) ;
 int event_dump_init (TYPE_1__*,int) ;
 int tmp_mem_init () ;

event *event_update_event (event *e, event *v, int type_id) {
  if (v == ((void*)0)) {
    return e;
  }

  tmp_mem_init();

  event_dump d;
  event_dump_init (&d, type_id);

  assert (event_dump_from_event (&d, v, type_id, e) > -1);

  if (d.tn) {
    event_dump_from_event (&d, e, type_id, ((void*)0));

    e = create_event (&d);
    assert (e != ((void*)0));
  }
  return e;
}
