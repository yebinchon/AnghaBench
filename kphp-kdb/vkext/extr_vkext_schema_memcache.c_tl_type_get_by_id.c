
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tl_type {char* id; } ;
struct hash_elem_tl_type_id {struct tl_type* x; } ;
struct TYPE_3__ {int ht_tid; } ;


 int assert (TYPE_1__*) ;
 TYPE_1__* cur_config ;
 struct hash_elem_tl_type_id* hash_lookup_tl_type_id (int ,struct tl_type*) ;

struct tl_type *tl_type_get_by_id (const char *s) {
  assert (cur_config);
  struct tl_type t;
  t.id = (char *)s;

  struct hash_elem_tl_type_id *h = hash_lookup_tl_type_id (cur_config->ht_tid, &t);
  return h ? h->x : 0;
}
