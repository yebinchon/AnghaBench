
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_expression {TYPE_1__* left; } ;
struct TYPE_2__ {int text; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int tl_expression_combinator_hash_compare (const void *a, const void *b) {
  const struct tl_expression *x = a, *y = b;
  return strcmp (x->left->text, y->left->text);
}
