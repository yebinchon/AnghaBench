
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prm; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *,int,int) ;
 int move ;

int data_move (data *d, int i, int j) {
  return PERM (move, &d->prm, i, j);
}
