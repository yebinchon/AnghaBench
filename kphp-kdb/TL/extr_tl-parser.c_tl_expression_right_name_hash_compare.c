
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int right_name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int tl_expression_right_name_hash_compare (const void *a, const void *b) {
  const struct tl_expression *x = a, *y = b;
  return strcmp (x->right_name, y->right_name);
}
