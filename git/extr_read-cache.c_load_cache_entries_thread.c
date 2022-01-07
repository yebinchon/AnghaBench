
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct load_cache_entries_thread_data {int ieot_start; int ieot_blocks; TYPE_2__* ieot; int offset; int mmap; int ce_mem_pool; int istate; int consumed; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {scalar_t__ nr; int offset; } ;


 scalar_t__ load_cache_entry_block (int ,int ,int ,scalar_t__,int ,int ,int *) ;

__attribute__((used)) static void *load_cache_entries_thread(void *_data)
{
 struct load_cache_entries_thread_data *p = _data;
 int i;


 for (i = p->ieot_start; i < p->ieot_start + p->ieot_blocks; i++) {
  p->consumed += load_cache_entry_block(p->istate, p->ce_mem_pool,
   p->offset, p->ieot->entries[i].nr, p->mmap, p->ieot->entries[i].offset, ((void*)0));
  p->offset += p->ieot->entries[i].nr;
 }
 return ((void*)0);
}
