
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct checkout {TYPE_1__* istate; } ;
struct cache_entry {int ce_flags; int name; int ce_stat_data; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;


 int CE_MATCHED ;
 int CE_SKIP_WORKTREE ;
 int CE_VALID ;
 int check_stat ;
 int fspathcmp (int ,int ) ;
 int match_stat_data (int *,struct stat*) ;

__attribute__((used)) static void mark_colliding_entries(const struct checkout *state,
       struct cache_entry *ce, struct stat *st)
{
 int i, trust_ino = check_stat;





 ce->ce_flags |= CE_MATCHED;

 for (i = 0; i < state->istate->cache_nr; i++) {
  struct cache_entry *dup = state->istate->cache[i];

  if (dup == ce)
   break;

  if (dup->ce_flags & (CE_MATCHED | CE_VALID | CE_SKIP_WORKTREE))
   continue;

  if ((trust_ino && !match_stat_data(&dup->ce_stat_data, st)) ||
      (!trust_ino && !fspathcmp(ce->name, dup->name))) {
   dup->ce_flags |= CE_MATCHED;
   break;
  }
 }
}
