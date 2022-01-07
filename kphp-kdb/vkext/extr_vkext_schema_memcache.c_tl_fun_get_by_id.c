
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tl_combinator {char* id; } ;
struct hash_elem_tl_fun_id {struct tl_combinator* x; } ;
struct TYPE_3__ {int ht_fid; } ;


 int assert (TYPE_1__*) ;
 TYPE_1__* cur_config ;
 struct hash_elem_tl_fun_id* hash_lookup_tl_fun_id (int ,struct tl_combinator*) ;

struct tl_combinator *tl_fun_get_by_id (const char *s) {
  assert (cur_config);
  struct tl_combinator c;
  c.id = (char *)s;

  struct hash_elem_tl_fun_id *h = hash_lookup_tl_fun_id (cur_config->ht_fid, &c);
  return h ? h->x : 0;
}
