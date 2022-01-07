
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int my_dyn_object ;
struct TYPE_2__ {scalar_t__ tp; int fn; int f; int * e; } ;
typedef TYPE_1__ my_change ;
typedef int event ;
typedef int dyn_object ;
typedef int change ;


 int assert (int) ;
 scalar_t__ ch_event ;
 scalar_t__ ch_fields ;
 int event_free (int *) ;
 int * event_update_event (int *,int *,int) ;
 int * event_update_php (int *,int ,int ,int) ;

inline int my_add_change (dyn_object **_o, change *_c, int type_id) {
  my_dyn_object **o = (my_dyn_object **)_o;
  my_change *c = (my_change *)_c;

  event *ne;
  if (c->tp == ch_event) {
    if (*o == ((void*)0)) {
      ne = c->e;
    } else {
      ne = event_update_event (*o, c->e, type_id);
      event_free (c->e);
    }
  } else if (c->tp == ch_fields) {
    ne = event_update_php (*o, c->f, c->fn, type_id);
  } else {
    assert ("wtf" && 0);
  }

  if (*o != ne) {
    event_free (*o);
    *o = ne;
  }
  return 0;
}
