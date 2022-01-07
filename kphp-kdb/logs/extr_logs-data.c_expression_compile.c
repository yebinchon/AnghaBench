
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type_desc ;
struct TYPE_3__ {char* s; int * root; int * token_list; } ;
typedef TYPE_1__ expression ;


 int FAIL (char*,char*) ;
 int * _cur_type ;
 int del_node (int *) ;
 int del_token_list (int *) ;
 int expression_prepare (int *) ;
 int * gen_tree (int *) ;
 int * get_token_list (char*) ;
 int simplify_tree (int *) ;
 int sp_init () ;

char *expression_compile (expression *e, char *s, type_desc *cur_type) {
  sp_init();
  _cur_type = cur_type;

  e->s = s;
  e->token_list = get_token_list (s);

  if (e->token_list == ((void*)0)) {
    FAIL ("can't split query [%s] into tokens", s);
  }

  e->root = gen_tree (e->token_list);
  if (e->root == ((void*)0)) {
    del_token_list (e->token_list);
    FAIL ("can't parse query [%s] as arithmetic expression", s);
  }

  int res = simplify_tree (e->root);
  if (!res) {
    del_token_list (e->token_list);
    del_node (e->root);
    FAIL ("can't parse query [%s] as arithmetic expression", s);
  }

  res = expression_prepare (e->root);
  if (!res) {
    del_token_list (e->token_list);
    del_node (e->root);
    FAIL ("can't prepare expression [%s]", s);
  }

  return ((void*)0);
}
