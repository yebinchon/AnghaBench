
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY (int ) ;
 scalar_t__ S ;
 int T ;
 int parse_subexpr ;
 int tree_add_child (int ,scalar_t__) ;
 int type_expr ;

struct tree *parse_expr (void) {
  PARSE_INIT (type_expr);
  int cc = 0;
  while (1) {
    PARSE_TRY (parse_subexpr);
    if (S) {
      tree_add_child (T, S);
      cc ++;
    } else {
      if (cc < 1) { PARSE_FAIL; }
      else { PARSE_OK; }
    }
  }
}
