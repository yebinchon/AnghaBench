
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; int ce_stat_data; } ;


 int CE_VALID ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ assume_unchanged ;
 int ce_mark_uptodate (struct cache_entry*) ;
 int fill_stat_data (int *,struct stat*) ;
 int mark_fsmonitor_valid (struct index_state*,struct cache_entry*) ;

void fill_stat_cache_info(struct index_state *istate, struct cache_entry *ce, struct stat *st)
{
 fill_stat_data(&ce->ce_stat_data, st);

 if (assume_unchanged)
  ce->ce_flags |= CE_VALID;

 if (S_ISREG(st->st_mode)) {
  ce_mark_uptodate(ce);
  mark_fsmonitor_valid(istate, ce);
 }
}
