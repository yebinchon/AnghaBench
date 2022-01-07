
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tn; } ;
typedef TYPE_1__ event_dump ;
typedef int event ;


 int assert (int) ;
 int * create_event (TYPE_1__*) ;
 int event_dump_from_event (TYPE_1__*,int *,int,int *) ;
 scalar_t__ event_dump_from_str (TYPE_1__*,char*,int,int *) ;
 int event_dump_init (TYPE_1__*,int) ;
 int tmp_mem_init () ;

event *event_update_str (event *e, char *chg, int type_id) {
  if (chg == ((void*)0)) {
    return e;
  }

  tmp_mem_init();

  event_dump d;
  event_dump_init (&d, type_id);

  if (event_dump_from_str (&d, chg, type_id, e) < 0) {
    return ((void*)0);
  }

  if (d.tn) {
    assert (event_dump_from_event (&d, e, type_id, ((void*)0)) > -1);
    e = create_event (&d);
    assert (e != ((void*)0));
  }
  return e;
}
