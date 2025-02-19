
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct TYPE_2__ {int ce_flags; } ;


 int CE_ADDED ;
 int CE_NEW_SKIP_WORKTREE ;
 int CE_UNPACKED ;

__attribute__((used)) static void mark_all_ce_unused(struct index_state *index)
{
 int i;
 for (i = 0; i < index->cache_nr; i++)
  index->cache[i]->ce_flags &= ~(CE_UNPACKED | CE_ADDED | CE_NEW_SKIP_WORKTREE);
}
