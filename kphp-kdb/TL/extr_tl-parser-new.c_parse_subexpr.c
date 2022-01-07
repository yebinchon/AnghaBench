
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int EXPECT (char*) ;
 int LEX_CHAR (char) ;
 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY (int ) ;
 scalar_t__ S ;
 int T ;
 int parse_nat_const ;
 int parse_term ;
 int tree_add_child (int ,scalar_t__) ;
 int type_subexpr ;

struct tree *parse_subexpr (void) {
  PARSE_INIT (type_subexpr);
  int was_term = 0;
  int cc = 0;

  while (1) {
    PARSE_TRY (parse_nat_const);
    if (S) {
      tree_add_child (T, S);
    } else if (!was_term) {
      was_term = 1;
      PARSE_TRY (parse_term);
      if (S) {
        tree_add_child (T, S);
      } else {
        break;
      }
    }
    cc ++;
    if (!LEX_CHAR ('+')) {
      break;
    }
    EXPECT ("+");
  }
  if (!cc) {
    PARSE_FAIL;
  } else {
    PARSE_OK;
  }
}
