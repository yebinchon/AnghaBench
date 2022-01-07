
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var {int flags; } ;
struct tl_combinator_tree {scalar_t__ act; char* data; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;


 scalar_t__ act_var ;
 int assert (struct tl_var*) ;
 int strlen (char*) ;
 struct tl_var* tl_get_var (char*,int ) ;

void tl_mark_vars (struct tl_combinator_tree *T) {
  if (!T) { return; }
  if (T->act == act_var) {
    char *id = ((struct tl_combinator_tree *)(T->data))->data;
    struct tl_var *v = tl_get_var (id, strlen (id));
    assert (v);
    v->flags |= 1;
  }
  tl_mark_vars (T->left);
  tl_mark_vars (T->right);
}
