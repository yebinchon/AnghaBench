
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hash_entry_ptr ;
struct TYPE_5__ {struct TYPE_5__* next_entry; } ;
typedef TYPE_1__ hash_entry ;


 int assert (int ) ;
 int htbl_allocated_cnt ;
 TYPE_1__* htbl_free_entries ;
 int htbl_init_mem (int) ;

hash_entry_ptr htbl_get_entry (void) {
  if (htbl_free_entries == ((void*)0)) {
    if (1 <= htbl_allocated_cnt && htbl_allocated_cnt < 10000) {
      htbl_init_mem (htbl_allocated_cnt);
    } else {
      htbl_init_mem (10000);
    }
  }

  assert (htbl_free_entries != ((void*)0));

  hash_entry *res = htbl_free_entries;
  htbl_free_entries = htbl_free_entries->next_entry;
  res->next_entry = ((void*)0);

  return res;
}
