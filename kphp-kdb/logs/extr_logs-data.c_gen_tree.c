
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_1__ token ;
struct TYPE_11__ {TYPE_1__ tok; } ;
typedef TYPE_2__ node ;


 int FAIL ;
 scalar_t__ IS_OP (scalar_t__) ;
 int IS_PREFIX_UN (scalar_t__) ;
 int OK ;
 TYPE_1__* dl_malloc (int) ;
 TYPE_2__** dl_malloc0 (int) ;
 scalar_t__ end_token ;
 TYPE_2__* new_node () ;
 scalar_t__ op_lb ;
 size_t op_rb ;
 int * priority ;
 int upd (TYPE_2__**,TYPE_1__*,int*,int*,int ) ;

node *gen_tree (token *v) {
  if (v == ((void*)0)) {
    return ((void*)0);
  }

  token *t = v;
  while (t->type != end_token) {
    t++;
  }
  int n = t - v, i;

  int tsize = n;

  node **s1 = dl_malloc0 (tsize * sizeof (node *));
  token *s2 = dl_malloc (tsize * sizeof (token));
  int s1n = 0, s2n = 0;
  for (i = 0; i < n; i++) {
    if (IS_OP(v[i].type)) {
      if (v[i].type == op_lb) {
        s2[s2n++] = v[i];
      } else {
        if (!IS_PREFIX_UN(v[i].type) && !upd (s1, s2, &s1n, &s2n, priority[v[i].type])) {
          for (i = 0; i < s1n; i++) { del_node (s1[i]); } dl_free (s1, tsize * sizeof (node *)); dl_free (s2, tsize * sizeof (token)); return ((void*)0);
        }
        if (v[i].type == op_rb) {
          if (!s2n || s2[s2n - 1].type != op_lb) {
            for (i = 0; i < s1n; i++) { del_node (s1[i]); } dl_free (s1, tsize * sizeof (node *)); dl_free (s2, tsize * sizeof (token)); return ((void*)0);
          }
          s2n--;
        } else {
          s2[s2n++] = v[i];
        }
      }
    } else {
      s1[s1n] = new_node();
      s1[s1n++]->tok = v[i];
    }
  }
  if (!upd (s1, s2, &s1n, &s2n, priority[op_rb]) || s1n != 1 || s2n) {
    for (i = 0; i < s1n; i++) { del_node (s1[i]); } dl_free (s1, tsize * sizeof (node *)); dl_free (s2, tsize * sizeof (token)); return ((void*)0);
  }
  node *res = s1[0];
  dl_free (s1, tsize * sizeof (node *)); dl_free (s2, tsize * sizeof (token));



  return res;
}
