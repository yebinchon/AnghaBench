
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtype; int * v_cstring; int v_string; } ;
struct TYPE_5__ {int vn; struct TYPE_5__** v; TYPE_1__ tok; } ;
typedef TYPE_2__ node ;


 int dl_strdup (int *) ;
 scalar_t__ v_cstring ;
 scalar_t__ v_string ;

int expression_prepare (node *v) {
  if (v == ((void*)0)) {
    return 1;
  }
  if (v->tok.dtype == v_cstring && v->tok.v_cstring != ((void*)0)) {
    v->tok.v_string = dl_strdup (v->tok.v_cstring);
    v->tok.dtype = v_string;
  }
  int i;
  for (i = 0; i < v->vn; i++) {
    if (!expression_prepare (v->v[i])) {
      return 0;
    }
  }
  return 1;
}
