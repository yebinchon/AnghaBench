
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unpack_trees_options {TYPE_2__* src_index; TYPE_1__* dir; } ;
struct object_id {int dummy; } ;
struct dir_struct {int exclude_per_dir; } ;
typedef struct cache_entry {char* name; int oid; int ce_mode; } const cache_entry ;
typedef int d ;
struct TYPE_4__ {int cache_nr; struct cache_entry const** cache; } ;
struct TYPE_3__ {int exclude_per_dir; } ;


 int CE_REMOVE ;
 int ERROR_NOT_UPTODATE_DIR ;
 scalar_t__ S_ISGITLINK (int ) ;
 int add_entry (struct unpack_trees_options*,struct cache_entry const*,int ,int ) ;
 int add_rejected_path (struct unpack_trees_options*,int ,char*) ;
 int ce_namelen (struct cache_entry const*) ;
 int ce_stage (struct cache_entry const*) ;
 int free (char*) ;
 int invalidate_ce_path (struct cache_entry const*,struct unpack_trees_options*) ;
 int locate_in_src_index (struct cache_entry const*,struct unpack_trees_options*) ;
 int mark_ce_used (struct cache_entry const*,struct unpack_trees_options*) ;
 int memset (struct dir_struct*,int ,int) ;
 int * oid_to_hex (struct object_id*) ;
 scalar_t__ oideq (struct object_id*,int *) ;
 int read_directory (struct dir_struct*,TYPE_2__*,char*,int,int *) ;
 int resolve_gitlink_ref (char*,char*,struct object_id*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int verify_clean_submodule (int *,struct cache_entry const*,struct unpack_trees_options*) ;
 scalar_t__ verify_uptodate (struct cache_entry const*,struct unpack_trees_options*) ;
 char* xstrfmt (char*,int,char*) ;

__attribute__((used)) static int verify_clean_subdirectory(const struct cache_entry *ce,
         struct unpack_trees_options *o)
{




 int namelen;
 int i;
 struct dir_struct d;
 char *pathbuf;
 int cnt = 0;

 if (S_ISGITLINK(ce->ce_mode)) {
  struct object_id oid;
  int sub_head = resolve_gitlink_ref(ce->name, "HEAD", &oid);




  if (!sub_head && oideq(&oid, &ce->oid))
   return 0;
  return verify_clean_submodule(sub_head ? ((void*)0) : oid_to_hex(&oid),
           ce, o);
 }





 namelen = ce_namelen(ce);
 for (i = locate_in_src_index(ce, o);
      i < o->src_index->cache_nr;
      i++) {
  struct cache_entry *ce2 = o->src_index->cache[i];
  int len = ce_namelen(ce2);
  if (len < namelen ||
      strncmp(ce->name, ce2->name, namelen) ||
      ce2->name[namelen] != '/')
   break;




  if (!ce_stage(ce2)) {
   if (verify_uptodate(ce2, o))
    return -1;
   add_entry(o, ce2, CE_REMOVE, 0);
   invalidate_ce_path(ce, o);
   mark_ce_used(ce2, o);
  }
  cnt++;
 }





 pathbuf = xstrfmt("%.*s/", namelen, ce->name);

 memset(&d, 0, sizeof(d));
 if (o->dir)
  d.exclude_per_dir = o->dir->exclude_per_dir;
 i = read_directory(&d, o->src_index, pathbuf, namelen+1, ((void*)0));
 if (i)
  return add_rejected_path(o, ERROR_NOT_UPTODATE_DIR, ce->name);
 free(pathbuf);
 return cnt;
}
