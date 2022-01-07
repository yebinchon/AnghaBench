
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int my_dyn_object ;
typedef int dyn_object ;


 int event_free (int *) ;

void my_free_dyn (int *i, dyn_object **_o) {
  my_dyn_object *o = *(my_dyn_object **)_o;
  event_free (o);
}
