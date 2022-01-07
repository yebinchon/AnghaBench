
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int prm; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *,int) ;
 int assert (int) ;
 int data_move (TYPE_1__*,int,int) ;
 int data_restore_fix (TYPE_1__*,int,int,int) ;
 int get_i ;

int data_move_new (data *d, int i, int j, int local_i, int local_j) {
  if (1) {
    int prev_i = i == 0 ? -1 : PERM (get_i, &d->prm, i - 1);
    assert (prev_i >= -1);
    data_restore_fix (d, prev_i, local_i, local_j);
  }

  return data_move (d, i, j);
}
