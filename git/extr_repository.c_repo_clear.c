
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int * index; int * submodule_cache; int * config; int * parsed_objects; int * objects; int * submodule_prefix; int * worktree; int * index_file; int * graft_file; int * commondir; int * gitdir; } ;


 int FREE_AND_NULL (int *) ;
 int discard_index (int *) ;
 int git_configset_clear (int *) ;
 int parsed_object_pool_clear (int *) ;
 int raw_object_store_clear (int *) ;
 int submodule_cache_free (int *) ;
 int the_index ;

void repo_clear(struct repository *repo)
{
 FREE_AND_NULL(repo->gitdir);
 FREE_AND_NULL(repo->commondir);
 FREE_AND_NULL(repo->graft_file);
 FREE_AND_NULL(repo->index_file);
 FREE_AND_NULL(repo->worktree);
 FREE_AND_NULL(repo->submodule_prefix);

 raw_object_store_clear(repo->objects);
 FREE_AND_NULL(repo->objects);

 parsed_object_pool_clear(repo->parsed_objects);
 FREE_AND_NULL(repo->parsed_objects);

 if (repo->config) {
  git_configset_clear(repo->config);
  FREE_AND_NULL(repo->config);
 }

 if (repo->submodule_cache) {
  submodule_cache_free(repo->submodule_cache);
  repo->submodule_cache = ((void*)0);
 }

 if (repo->index) {
  discard_index(repo->index);
  if (repo->index != &the_index)
   FREE_AND_NULL(repo->index);
 }
}
