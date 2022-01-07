
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int magic; } ;
struct tl_compiler {int * hm_magic; } ;


 struct tl_expression* tl_hashmap_get_f (int *,struct tl_expression*,int ) ;

struct tl_expression *tl_expression_find_by_magic (struct tl_compiler *C, int magic) {
  int i;
  struct tl_expression T;
  T.magic = magic;
  for (i = 0; i < 2; i++) {
    struct tl_expression *E = tl_hashmap_get_f (&C->hm_magic[i], &T, 0);
    if (E) {
      return E;
    }
  }
  return ((void*)0);
}
