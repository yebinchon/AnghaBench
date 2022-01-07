
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_isearch_get_best {int limit; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int TL_VECTOR ;
 int* get_best_v (int ) ;
 scalar_t__* names ;
 scalar_t__ names_buff ;
 int tl_store_int (int) ;
 int tl_store_string0 (scalar_t__) ;

int tl_do_isearch_get_best (struct tl_act_extra *extra) {
  struct tl_isearch_get_best *e = (struct tl_isearch_get_best *)extra->extra;

  int *v = get_best_v (e->limit);

  tl_store_int (TL_VECTOR);
  tl_store_int (v[0]);
  int i;
  for (i = 1; i <= v[0]; i++) {
    tl_store_string0 (names_buff + names[v[i]] + 1);
  }

  return 1;
}
