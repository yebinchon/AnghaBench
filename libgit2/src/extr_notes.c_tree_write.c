
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;


 int git_tree_lookup (int **,int *,int *) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int const**,int *,char const*,int const*,unsigned int) ;
 int git_treebuilder_new (int **,int *,int *) ;
 int git_treebuilder_remove (int *,char const*) ;
 int git_treebuilder_write (int *,int *) ;

__attribute__((used)) static int tree_write(
 git_tree **out,
 git_repository *repo,
 git_tree *source_tree,
 const git_oid *object_oid,
 const char *treeentry_name,
 unsigned int attributes)
{
 int error;
 git_treebuilder *tb = ((void*)0);
 const git_tree_entry *entry;
 git_oid tree_oid;

 if ((error = git_treebuilder_new(&tb, repo, source_tree)) < 0)
  goto cleanup;

 if (object_oid) {
  if ((error = git_treebuilder_insert(
    &entry, tb, treeentry_name, object_oid, attributes)) < 0)
   goto cleanup;
 } else {
  if ((error = git_treebuilder_remove(tb, treeentry_name)) < 0)
   goto cleanup;
 }

 if ((error = git_treebuilder_write(&tree_oid, tb)) < 0)
  goto cleanup;

 error = git_tree_lookup(out, repo, &tree_oid);

cleanup:
 git_treebuilder_free(tb);
 return error;
}
