
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int param_set; } ;
typedef TYPE_1__ token ;


 int dl_free (TYPE_1__*,int) ;
 scalar_t__ end_token ;
 scalar_t__ op_in ;
 int set_ll_free (int *) ;

void del_token_list (token *v) {
  if (v == ((void*)0)) {
    return;
  }

  token *t = v;
  while (t->type != end_token) {
    if (t->type == op_in) {
      set_ll_free (&t->param_set);
    }

    t++;
  }

  dl_free (v, (t - v + 1) * sizeof (token));
}
