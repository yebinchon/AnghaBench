
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_hashmap {int dummy; } ;
struct tl_expression {TYPE_1__* left; } ;
struct TYPE_2__ {int text; } ;


 int tl_str_compute_hash (struct tl_hashmap*,int ,int*,int*) ;

__attribute__((used)) static void tl_expression_combinator_hash_compute_hash (struct tl_hashmap *self, void *p, int *h1, int *h2) {
  const struct tl_expression *E = p;
  tl_str_compute_hash (self, E->left->text, h1, h2);
}
