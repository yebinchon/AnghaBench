
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tl_type {int name; } ;
struct hash_elem_tl_type_name {struct tl_type* x; } ;
struct TYPE_3__ {int ht_tname; } ;


 int assert (TYPE_1__*) ;
 TYPE_1__* cur_config ;
 struct hash_elem_tl_type_name* hash_lookup_tl_type_name (int ,struct tl_type*) ;

struct tl_type *tl_type_get_by_name (int name) {
  assert (cur_config);
  struct tl_type t;
  t.name = name;

  struct hash_elem_tl_type_name *h = hash_lookup_tl_type_name (cur_config->ht_tname, &t);
  return h ? h->x : 0;
}
