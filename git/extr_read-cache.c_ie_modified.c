
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ sd_size; } ;
struct cache_entry {TYPE_1__ ce_stat_data; int ce_mode; } ;


 int DATA_CHANGED ;
 int MODE_CHANGED ;
 scalar_t__ S_ISGITLINK (int ) ;
 int TYPE_CHANGED ;
 int ce_modified_check_fs (struct index_state*,struct cache_entry const*,struct stat*) ;
 int ie_match_stat (struct index_state*,struct cache_entry const*,struct stat*,unsigned int) ;

int ie_modified(struct index_state *istate,
  const struct cache_entry *ce,
  struct stat *st, unsigned int options)
{
 int changed, changed_fs;

 changed = ie_match_stat(istate, ce, st, options);
 if (!changed)
  return 0;




 if (changed & (MODE_CHANGED | TYPE_CHANGED))
  return changed;
 if ((changed & DATA_CHANGED) &&
     (S_ISGITLINK(ce->ce_mode) || ce->ce_stat_data.sd_size != 0))
  return changed;

 changed_fs = ce_modified_check_fs(istate, ce, st);
 if (changed_fs)
  return changed | changed_fs;
 return 0;
}
