
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prm; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *,int,int) ;
 int move_and_create ;

int data_move_and_create (data *d, int i, int j) {

  return PERM (move_and_create, &d->prm, i, j);
}
