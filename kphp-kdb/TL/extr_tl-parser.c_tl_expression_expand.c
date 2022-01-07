
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {int text; struct tl_token* next; } ;
struct tl_expression {scalar_t__ type; int flag_expanded; struct tl_token* right; int right_name; struct tl_token* left; } ;


 int assert (int) ;
 int cstr_dup (int ) ;
 int cstr_free (int *) ;
 int cstr_join_with_sugar (struct tl_token*) ;
 int strcmp (int ,int ) ;
 struct tl_token* tl_token_clone (struct tl_token*) ;
 scalar_t__ tlet_polymorphic ;
 scalar_t__ tlet_polymorphic_instance ;
 scalar_t__ tlet_simple ;

void tl_expression_expand (struct tl_expression *E, struct tl_expression *R) {
  assert (R->type == tlet_polymorphic);
  assert (E->type == tlet_polymorphic_instance);
  struct tl_token *L = tl_token_clone (R->left);
  struct tl_token *x, *y, *z;
  for (x = L->next; x != ((void*)0); x = x->next) {
    for (y = R->right->next, z = E->left->next; y != ((void*)0); y = y->next, z = z->next) {
      if (!strcmp (x->text, y->text)) {
        cstr_free (&x->text);
        x->text = cstr_dup (z->text);
      }
    }
  }
  E->right = E->left;
  E->left = L;
  E->type = tlet_simple;
  E->right_name = cstr_join_with_sugar (E->right);
  E->flag_expanded = 1;
}
