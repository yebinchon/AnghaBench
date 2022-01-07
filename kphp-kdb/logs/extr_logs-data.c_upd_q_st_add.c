
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* q_prev; int * std_val; } ;
typedef TYPE_1__ event ;


 int FN ;
 int* map_int_int_add (int *,int ) ;
 int* map_ll_int_add (int *,long long) ;
 int * q_st_int ;
 int * q_st_ll ;
 scalar_t__* std_t ;

void upd_q_st_add (event *e, int id) {
  int i;
  for (i = 1; i < FN; i += 1 + std_t[i]) {
    if (std_t[i]) {
      int *t = map_ll_int_add (&q_st_ll[i], *(long long *)&e->std_val[i]);
      e->q_prev[i] = *t;
      *t = id;
    } else {
      int *t = map_int_int_add (&q_st_int[i], e->std_val[i]);
      e->q_prev[i] = *t;
      *t = id;
    }
  }
}
