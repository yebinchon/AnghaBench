
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int * right; int * left; int right_name; int text; } ;


 int cstr_free (int *) ;
 int tl_list_token_free (int *) ;
 int zfree (struct tl_expression*,int) ;

__attribute__((used)) static void tl_expression_free (struct tl_expression *E) {
  cstr_free (&E->text);
  cstr_free (&E->right_name);
  tl_list_token_free (E->left); E->left = ((void*)0);
  tl_list_token_free (E->right); E->right = ((void*)0);
  zfree (E, sizeof (*E));
}
