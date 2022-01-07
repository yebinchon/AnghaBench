
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree_entry ;
struct TYPE_6__ {size_t children_count; scalar_t__ entry_count; struct TYPE_6__** children; int oid; } ;
typedef TYPE_1__ git_tree_cache ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_pool ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__**) ;
 int GIT_ERROR_CHECK_ALLOC_MULTIPLY (size_t*,size_t,int) ;
 scalar_t__ GIT_FILEMODE_TREE ;
 int git_oid_cpy (int *,int ) ;
 TYPE_1__** git_pool_mallocz (int *,size_t) ;
 int git_tree_cache_new (TYPE_1__**,int ,int *) ;
 int * git_tree_entry_byindex (int const*,size_t) ;
 scalar_t__ git_tree_entry_filemode (int const*) ;
 int git_tree_entry_id (int const*) ;
 int git_tree_entry_name (int const*) ;
 size_t git_tree_entrycount (int const*) ;
 int git_tree_free (int *) ;
 int git_tree_id (int const*) ;
 int git_tree_lookup (int **,int *,int ) ;
 int * git_tree_owner (int const*) ;

__attribute__((used)) static int read_tree_recursive(git_tree_cache *cache, const git_tree *tree, git_pool *pool)
{
 git_repository *repo;
 size_t i, j, nentries, ntrees, alloc_size;
 int error;

 repo = git_tree_owner(tree);

 git_oid_cpy(&cache->oid, git_tree_id(tree));
 nentries = git_tree_entrycount(tree);






 ntrees = 0;
 for (i = 0; i < nentries; i++) {
  const git_tree_entry *entry;

  entry = git_tree_entry_byindex(tree, i);
  if (git_tree_entry_filemode(entry) == GIT_FILEMODE_TREE)
   ntrees++;
 }

 GIT_ERROR_CHECK_ALLOC_MULTIPLY(&alloc_size, ntrees, sizeof(git_tree_cache *));

 cache->children_count = ntrees;
 cache->children = git_pool_mallocz(pool, alloc_size);
 GIT_ERROR_CHECK_ALLOC(cache->children);

 j = 0;
 for (i = 0; i < nentries; i++) {
  const git_tree_entry *entry;
  git_tree *subtree;

  entry = git_tree_entry_byindex(tree, i);
  if (git_tree_entry_filemode(entry) != GIT_FILEMODE_TREE) {
   cache->entry_count++;
   continue;
  }

  if ((error = git_tree_cache_new(&cache->children[j], git_tree_entry_name(entry), pool)) < 0)
   return error;

  if ((error = git_tree_lookup(&subtree, repo, git_tree_entry_id(entry))) < 0)
   return error;

  error = read_tree_recursive(cache->children[j], subtree, pool);
  git_tree_free(subtree);
  cache->entry_count += cache->children[j]->entry_count;
  j++;

  if (error < 0)
   return error;
 }

 return 0;
}
