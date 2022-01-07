
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {TYPE_1__* repo; } ;
struct index_state {int dummy; } ;
struct diff_filespec {int oid; int mode; } ;
struct cache_entry {int dummy; } ;
struct TYPE_2__ {struct index_state* index; } ;


 int CE_MATCH_IGNORE_MISSING ;
 int CE_MATCH_REFRESH ;
 int _ (char*) ;
 int add_index_entry (struct index_state*,struct cache_entry*,int) ;
 int err (struct merge_options*,int ,char const*) ;
 struct cache_entry* make_cache_entry (struct index_state*,int ,int *,char const*,int,int ) ;
 struct cache_entry* refresh_cache_entry (struct index_state*,struct cache_entry*,int) ;

__attribute__((used)) static int add_cacheinfo(struct merge_options *opt,
    const struct diff_filespec *blob,
    const char *path, int stage, int refresh, int options)
{
 struct index_state *istate = opt->repo->index;
 struct cache_entry *ce;
 int ret;

 ce = make_cache_entry(istate, blob->mode, &blob->oid, path, stage, 0);
 if (!ce)
  return err(opt, _("add_cacheinfo failed for path '%s'; merge aborting."), path);

 ret = add_index_entry(istate, ce, options);
 if (refresh) {
  struct cache_entry *nce;

  nce = refresh_cache_entry(istate, ce,
       CE_MATCH_REFRESH | CE_MATCH_IGNORE_MISSING);
  if (!nce)
   return err(opt, _("add_cacheinfo failed to refresh for path '%s'; merge aborting."), path);
  if (nce != ce)
   ret = add_index_entry(istate, nce, options);
 }
 return ret;
}
