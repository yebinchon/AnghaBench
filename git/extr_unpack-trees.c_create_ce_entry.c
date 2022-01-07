
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {int pathlen; int path; int oid; int mode; } ;
struct index_state {int dummy; } ;
struct cache_entry {size_t ce_namelen; int name; int oid; int ce_flags; int ce_mode; } ;


 int create_ce_flags (int) ;
 int create_ce_mode (int ) ;
 struct cache_entry* make_empty_cache_entry (struct index_state*,size_t) ;
 struct cache_entry* make_empty_transient_cache_entry (size_t) ;
 int make_traverse_path (int ,size_t,struct traverse_info const*,int ,int ) ;
 int oidcpy (int *,int *) ;
 size_t traverse_path_len (struct traverse_info const*,int ) ;
 int tree_entry_len (struct name_entry const*) ;

__attribute__((used)) static struct cache_entry *create_ce_entry(const struct traverse_info *info,
 const struct name_entry *n,
 int stage,
 struct index_state *istate,
 int is_transient)
{
 size_t len = traverse_path_len(info, tree_entry_len(n));
 struct cache_entry *ce =
  is_transient ?
  make_empty_transient_cache_entry(len) :
  make_empty_cache_entry(istate, len);

 ce->ce_mode = create_ce_mode(n->mode);
 ce->ce_flags = create_ce_flags(stage);
 ce->ce_namelen = len;
 oidcpy(&ce->oid, &n->oid);

 make_traverse_path(ce->name, len + 1, info, n->path, n->pathlen);

 return ce;
}
