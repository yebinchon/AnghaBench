
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {size_t cache_nr; TYPE_2__* split_index; TYPE_1__** cache; } ;
struct TYPE_4__ {int nr_deletions; } ;
struct TYPE_3__ {int ce_flags; } ;


 int CE_REMOVE ;
 int die (char*,int,size_t) ;

__attribute__((used)) static void mark_entry_for_delete(size_t pos, void *data)
{
 struct index_state *istate = data;
 if (pos >= istate->cache_nr)
  die("position for delete %d exceeds base index size %d",
      (int)pos, istate->cache_nr);
 istate->cache[pos]->ce_flags |= CE_REMOVE;
 istate->split_index->nr_deletions++;
}
