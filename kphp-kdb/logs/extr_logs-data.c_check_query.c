
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* root; } ;
typedef TYPE_2__ expression ;
typedef int event ;
struct TYPE_5__ {int v_int; } ;
struct TYPE_7__ {TYPE_1__ tok; } ;


 scalar_t__ recalc_tree (TYPE_3__*,int *) ;

inline int check_query (expression *expr, event *e) {
  if (recalc_tree (expr->root, e)) {
    return expr->root->tok.v_int;
  }
  return 0;
}
