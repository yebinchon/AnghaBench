
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prm; } ;
typedef TYPE_1__ data ;
typedef int actual_object ;


 int PERM (int ,int *,int*,int,int ) ;
 int assert (int) ;
 int data_get_actual_object (TYPE_1__*,int,int *) ;
 int slice ;

int data_get_actual_objects (data *d, actual_object *o, int mx) {
  static int p[1000];
  int n = PERM (slice, &d->prm, p, 1000, 0);
  assert (n < 1000);
  if (n > mx) {
    n = mx;
  }
  int i;
  for (i = 0; i < n; i++) {
    assert (data_get_actual_object (d, p[i], &o[i]) > -1);
  }

  return n;
}
