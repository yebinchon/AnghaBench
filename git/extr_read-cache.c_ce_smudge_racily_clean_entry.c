
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ sd_size; } ;
struct cache_entry {TYPE_1__ ce_stat_data; int name; } ;


 scalar_t__ ce_match_stat_basic (struct cache_entry*,struct stat*) ;
 scalar_t__ ce_modified_check_fs (struct index_state*,struct cache_entry*,struct stat*) ;
 scalar_t__ lstat (int ,struct stat*) ;

__attribute__((used)) static void ce_smudge_racily_clean_entry(struct index_state *istate,
      struct cache_entry *ce)
{
 struct stat st;

 if (lstat(ce->name, &st) < 0)
  return;
 if (ce_match_stat_basic(ce, &st))
  return;
 if (ce_modified_check_fs(istate, ce, &st)) {
  ce->ce_stat_data.sd_size = 0;
 }
}
