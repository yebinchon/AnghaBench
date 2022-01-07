
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long* std_val; } ;


 int FN ;
 int QDEC (int) ;
 TYPE_1__** eq ;
 scalar_t__ eq_n ;
 int eq_r ;
 int* map_int_int_get (int *,long long) ;
 int* map_ll_int_get (int *,long long) ;
 int * q_st_int ;
 int * q_st_ll ;
 scalar_t__* std_t ;

inline int get_q_st (int qid, long long val) {
  if (qid == -1 && eq_n) {
    int t = eq_r;
    QDEC(t);
    return t;
  }

  if (0 <= qid && qid < FN) {
    if (std_t[qid] == 0) {
      int *t = map_int_int_get (&q_st_int[qid], val);
      if (t != ((void*)0) && eq[*t] != ((void*)0) && eq[*t]->std_val[qid] == val) {
        return *t;
      }
    } else {
      int *t = map_ll_int_get (&q_st_ll[qid], val);
      if (t != ((void*)0) && eq[*t] != ((void*)0) && (*(long long *)&eq[*t]->std_val[qid]) == val) {
        return *t;
      }
    }
  }

  return -1;
}
