
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {char* id; scalar_t__ is_current; } ;
struct ref_store {int dummy; } ;


 int REF_STORE_ALL_CAPS ;
 int get_git_common_dir () ;
 struct ref_store* get_main_ref_store (int ) ;
 int git_common_path (char*,char*) ;
 struct ref_store* lookup_ref_store_map (int *,char const*) ;
 struct ref_store* ref_store_init (int ,int ) ;
 int register_ref_store_map (int *,char*,struct ref_store*,char const*) ;
 int the_repository ;
 int worktree_ref_stores ;

struct ref_store *get_worktree_ref_store(const struct worktree *wt)
{
 struct ref_store *refs;
 const char *id;

 if (wt->is_current)
  return get_main_ref_store(the_repository);

 id = wt->id ? wt->id : "/";
 refs = lookup_ref_store_map(&worktree_ref_stores, id);
 if (refs)
  return refs;

 if (wt->id)
  refs = ref_store_init(git_common_path("worktrees/%s", wt->id),
          REF_STORE_ALL_CAPS);
 else
  refs = ref_store_init(get_git_common_dir(),
          REF_STORE_ALL_CAPS);

 if (refs)
  register_ref_store_map(&worktree_ref_stores, "worktree",
           refs, id);
 return refs;
}
