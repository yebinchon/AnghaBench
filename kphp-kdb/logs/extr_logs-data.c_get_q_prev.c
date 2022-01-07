
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* q_prev; int timestamp; scalar_t__* std_val; } ;
typedef TYPE_1__ event ;


 int QDEC (int) ;
 int assert (int ) ;
 TYPE_1__** eq ;
 int eq_l ;
 int* std_t ;

inline int get_q_prev (int i, int qid) {
  if (qid == -1) {
    if (i == eq_l) {
      return -1;
    }
    QDEC (i);
    return i;
  }

  event *eqi = eq[i];
  assert (eqi != ((void*)0));
  int ni = eqi->q_prev[qid];
  event *eqni = eq[ni];


  if (eqni != ((void*)0) && eqi->timestamp >= eqni->timestamp - 3601) {
    if (std_t[qid] == 0 && eqi->std_val[qid] == eqni->std_val[qid]) {
      return ni;
    }
    if (std_t[qid] == 1 && *(long long *)&eqi->std_val[qid] == *(long long *)&eqni->std_val[qid]) {
      return ni;
    }
  }
  return -1;
}
