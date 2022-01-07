
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ query_node_t ;


 TYPE_1__* new_query_node (int ) ;
 char* parse_ptr ;
 void* parse_query_term () ;
 int qn_and ;
 int qn_minus ;
 int qn_or ;
 int skipspc () ;

__attribute__((used)) static query_node_t *parse_query_expr (void) {
  query_node_t *X, *Y;
  X = parse_query_term ();
  if (!X) {
    return 0;
  }
  while (1) {
    skipspc();
    if (*parse_ptr != '&' && *parse_ptr != '+' && *parse_ptr != '-' && *parse_ptr != '#') {
      return X;
    }
    Y = new_query_node (*parse_ptr == '#' ? qn_or : (*parse_ptr == '-' ? qn_minus : qn_and));
    if (!Y) {
      return 0;
    }
    Y->left = X;
    parse_ptr++;
    Y->right = parse_query_term ();
    if (!Y->right) {
      return 0;
    }
    X = Y;
  }
  return X;
}
