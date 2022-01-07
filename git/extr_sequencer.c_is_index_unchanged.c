
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {struct index_state* index; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct commit {int dummy; } ;


 int RESOLVE_REF_READING ;
 int _ (char*) ;
 int error (int ) ;
 struct object_id* get_cache_tree_oid (struct index_state*) ;
 int get_commit_tree_oid (struct commit*) ;
 struct commit* lookup_commit (struct repository*,struct object_id*) ;
 int oideq (struct object_id*,int ) ;
 scalar_t__ parse_commit (struct commit*) ;
 int resolve_ref_unsafe (char*,int ,struct object_id*,int *) ;

__attribute__((used)) static int is_index_unchanged(struct repository *r)
{
 struct object_id head_oid, *cache_tree_oid;
 struct commit *head_commit;
 struct index_state *istate = r->index;

 if (!resolve_ref_unsafe("HEAD", RESOLVE_REF_READING, &head_oid, ((void*)0)))
  return error(_("could not resolve HEAD commit"));

 head_commit = lookup_commit(r, &head_oid);
 if (parse_commit(head_commit))
  return -1;

 if (!(cache_tree_oid = get_cache_tree_oid(istate)))
  return -1;

 return oideq(cache_tree_oid, get_commit_tree_oid(head_commit));
}
