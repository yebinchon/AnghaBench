
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {char* right_name; } ;
struct tl_compiler {int hm_composite_typename; } ;


 struct tl_expression* tl_hashmap_get_f (int *,struct tl_expression*,int ) ;

struct tl_expression *tl_expression_find_first_by_composite_typename (struct tl_compiler *C, char *composite_typename) {
  struct tl_expression T = { .right_name = composite_typename };
  return tl_hashmap_get_f (&C->hm_composite_typename, &T, 0);
}
