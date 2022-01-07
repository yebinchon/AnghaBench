
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct rev_info {int repo; } ;
struct index_state {int cache_nr; scalar_t__ cache_tree; struct cache_entry** cache; } ;
struct cache_entry {int name; int ce_mode; int oid; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct blob {TYPE_1__ object; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISGITLINK (int ) ;
 int add_cache_tree (scalar_t__,struct rev_info*,struct strbuf*,unsigned int) ;
 int add_pending_object_with_path (struct rev_info*,TYPE_1__*,char*,int ,int ) ;
 int die (char*) ;
 struct blob* lookup_blob (int ,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void do_add_index_objects_to_pending(struct rev_info *revs,
         struct index_state *istate,
         unsigned int flags)
{
 int i;

 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  struct blob *blob;

  if (S_ISGITLINK(ce->ce_mode))
   continue;

  blob = lookup_blob(revs->repo, &ce->oid);
  if (!blob)
   die("unable to add index blob to traversal");
  blob->object.flags |= flags;
  add_pending_object_with_path(revs, &blob->object, "",
          ce->ce_mode, ce->name);
 }

 if (istate->cache_tree) {
  struct strbuf path = STRBUF_INIT;
  add_cache_tree(istate->cache_tree, revs, &path, flags);
  strbuf_release(&path);
 }
}
