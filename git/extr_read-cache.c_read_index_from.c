
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_index {struct index_state* base; int base_oid; } ;
struct index_state {int cache_nr; int oid; struct split_index* split_index; scalar_t__ initialized; } ;


 int _ (char*) ;
 int die (int ,char*,char*,char*) ;
 int discard_index (struct index_state*) ;
 int do_read_index (struct index_state*,char const*,int) ;
 int free (char*) ;
 int freshen_shared_index (char*,int ) ;
 scalar_t__ is_null_oid (int *) ;
 int merge_base_index (struct index_state*) ;
 char* oid_to_hex (int *) ;
 int oideq (int *,int *) ;
 int post_read_index_from (struct index_state*) ;
 int the_repository ;
 int trace2_region_enter_printf (char*,char*,int ,char*,char const*) ;
 int trace2_region_leave_printf (char*,char*,int ,char*,char const*) ;
 int trace_performance_enter () ;
 int trace_performance_leave (char*,char const*) ;
 struct index_state* xcalloc (int,int) ;
 char* xstrfmt (char*,char const*,char*) ;

int read_index_from(struct index_state *istate, const char *path,
      const char *gitdir)
{
 struct split_index *split_index;
 int ret;
 char *base_oid_hex;
 char *base_path;


 if (istate->initialized)
  return istate->cache_nr;





 trace2_region_enter_printf("index", "do_read_index", the_repository,
       "%s", path);
 trace_performance_enter();
 ret = do_read_index(istate, path, 0);
 trace_performance_leave("read cache %s", path);
 trace2_region_leave_printf("index", "do_read_index", the_repository,
       "%s", path);

 split_index = istate->split_index;
 if (!split_index || is_null_oid(&split_index->base_oid)) {
  post_read_index_from(istate);
  return ret;
 }

 trace_performance_enter();
 if (split_index->base)
  discard_index(split_index->base);
 else
  split_index->base = xcalloc(1, sizeof(*split_index->base));

 base_oid_hex = oid_to_hex(&split_index->base_oid);
 base_path = xstrfmt("%s/sharedindex.%s", gitdir, base_oid_hex);
 trace2_region_enter_printf("index", "shared/do_read_index",
       the_repository, "%s", base_path);
 ret = do_read_index(split_index->base, base_path, 1);
 trace2_region_leave_printf("index", "shared/do_read_index",
       the_repository, "%s", base_path);
 if (!oideq(&split_index->base_oid, &split_index->base->oid))
  die(_("broken index, expect %s in %s, got %s"),
      base_oid_hex, base_path,
      oid_to_hex(&split_index->base->oid));

 freshen_shared_index(base_path, 0);
 merge_base_index(istate);
 post_read_index_from(istate);
 trace_performance_leave("read cache %s", base_path);
 free(base_path);
 return ret;
}
