
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hash_entry_vct ;
struct TYPE_3__ {struct TYPE_3__* next_entry; } ;


 int assert (int) ;
 scalar_t__ dl_get_memory_used () ;
 TYPE_1__* dl_malloc (int) ;
 int htbl_vct_allocated_cnt ;
 TYPE_1__* htbl_vct_free_entries ;
 int htbl_vct_memory ;

void htbl_vct_init_mem (int n) {
  assert (htbl_vct_free_entries == ((void*)0));
  assert (n > 0);

  htbl_vct_memory -= dl_get_memory_used();
  htbl_vct_free_entries = dl_malloc (sizeof (hash_entry_vct) * n);
  assert (htbl_vct_free_entries != ((void*)0));
  htbl_vct_memory += dl_get_memory_used();

  htbl_vct_allocated_cnt += n;

  int i;
  for (i = 0; i + 1 < n; i++) {
    htbl_vct_free_entries[i].next_entry = &htbl_vct_free_entries[i + 1];
  }
  htbl_vct_free_entries[n - 1].next_entry = ((void*)0);
}
