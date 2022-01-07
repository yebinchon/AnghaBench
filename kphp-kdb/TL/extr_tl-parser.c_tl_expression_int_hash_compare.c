
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {scalar_t__ magic; } ;



__attribute__((used)) static int tl_expression_int_hash_compare (const void *a, const void *b) {
  const struct tl_expression *x = a, *y = b;
  return (x->magic < y->magic) ? -1 : ((x->magic > y->magic) ? 1 : 0);
}
