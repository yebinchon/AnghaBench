
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * std_val; } ;
typedef TYPE_1__ event ;


 int FN ;
 int map_int_int_del (int *,int ) ;
 int* map_int_int_get (int *,int ) ;
 int map_ll_int_del (int *,long long) ;
 int* map_ll_int_get (int *,long long) ;
 int * q_st_int ;
 int * q_st_ll ;
 scalar_t__* std_t ;

void upd_q_st_delete (event *e, int id) {
  int i;
  for (i = 1; i < FN; i += 1 + std_t[i]) {
    if (std_t[i]) {
      int *tmp = map_ll_int_get (&q_st_ll[i], *(long long *)&e->std_val[i]);

      if (tmp != ((void*)0) && *tmp == id) {
        map_ll_int_del (&q_st_ll[i], *(long long *)&e->std_val[i]);
      }
    } else {
      int *tmp = map_int_int_get (&q_st_int[i], e->std_val[i]);

      if (tmp != ((void*)0) && *tmp == id) {
        map_int_int_del (&q_st_int[i], e->std_val[i]);
      }
    }
  }
}
