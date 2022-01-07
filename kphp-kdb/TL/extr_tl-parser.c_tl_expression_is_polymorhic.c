
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {struct tl_token* next; } ;
struct tl_expression {struct tl_token* right; } ;


 int tl_token_is_type_name (struct tl_token*) ;
 int tl_token_is_variable_type (struct tl_token*) ;

int tl_expression_is_polymorhic (struct tl_expression *E) {
  struct tl_token *u = E->right;
  if (u == ((void*)0)) {
    return 0;
  }
  if (!tl_token_is_type_name (u)) {
    return 0;
  }
  u = u->next;
  if (u == ((void*)0)) {
    return 0;
  }
  while (u != ((void*)0)) {
    if (!tl_token_is_variable_type (u)) {
      return 0;
    }
    u = u->next;
  }
  return 1;
}
