
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* r; struct TYPE_4__* l; int x; } ;
typedef TYPE_1__ wkey ;
struct TYPE_5__ {long long w_id; int q_id; } ;


 size_t MAX_ANS ;
 TYPE_3__* ans ;
 size_t ans_n ;

void dfs (wkey *v, long long id) {
  if (v == ((void*)0) || ans_n >= MAX_ANS) {
    return;
  }
  ans[ans_n].w_id = id;
  ans[ans_n].q_id = v->x;
  ans_n++;

  dfs (v->l, id);
  dfs (v->r, id);
}
