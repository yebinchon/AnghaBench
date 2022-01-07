
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_FILEMODE_TREE ;
 int find_subtree_in_current_level (int **,int *,int *,char const*,int) ;
 int git_tree_free (int *) ;
 int git_tree_id (int *) ;
 int strncpy (char*,char const*,int) ;
 int tree_write (int **,int *,int *,int ,char*,int ) ;

__attribute__((used)) static int manipulate_note_in_tree_r(
 git_tree **out,
 git_repository *repo,
 git_tree *parent,
 git_oid *note_oid,
 const char *annotated_object_sha,
 int fanout,
 int (*note_exists_cb)(
  git_tree **out,
  git_repository *repo,
  git_tree *parent,
  git_oid *note_oid,
  const char *annotated_object_sha,
  int fanout,
  int current_error),
 int (*note_notfound_cb)(
  git_tree **out,
  git_repository *repo,
  git_tree *parent,
  git_oid *note_oid,
  const char *annotated_object_sha,
  int fanout,
  int current_error))
{
 int error;
 git_tree *subtree = ((void*)0), *new = ((void*)0);
 char subtree_name[3];

 error = find_subtree_in_current_level(
  &subtree, repo, parent, annotated_object_sha, fanout);

 if (error == GIT_EEXISTS) {
  error = note_exists_cb(
   out, repo, parent, note_oid, annotated_object_sha, fanout, error);
  goto cleanup;
 }

 if (error == GIT_ENOTFOUND) {
  error = note_notfound_cb(
   out, repo, parent, note_oid, annotated_object_sha, fanout, error);
  goto cleanup;
 }

 if (error < 0)
  goto cleanup;


 error = manipulate_note_in_tree_r(
  &new, repo, subtree, note_oid, annotated_object_sha,
  fanout + 2, note_exists_cb, note_notfound_cb);

 if (error < 0)
  goto cleanup;

 strncpy(subtree_name, annotated_object_sha + fanout, 2);
 subtree_name[2] = '\0';

 error = tree_write(out, repo, parent, git_tree_id(new),
      subtree_name, GIT_FILEMODE_TREE);


cleanup:
 git_tree_free(new);
 git_tree_free(subtree);
 return error;
}
