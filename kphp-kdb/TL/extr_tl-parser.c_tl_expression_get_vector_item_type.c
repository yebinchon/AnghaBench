
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {char* text; struct tl_token* next; } ;
struct tl_expression {struct tl_token* right; } ;



char *tl_expression_get_vector_item_type (struct tl_expression *E) {
  if (E->right == ((void*)0)) {
    return ((void*)0);
  }
  struct tl_token *T = E->right;
  if (T == ((void*)0)) {
    return ((void*)0);
  }
  T = T->next;
  if (T->next != ((void*)0)) {
    return ((void*)0);
  }
  return T->text;
}
