
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_UNUSED (int) ;
 int tree_write (int **,int *,int *,int *,char const*,int ) ;

__attribute__((used)) static int remove_note_in_tree_eexists_cb(
 git_tree **out,
 git_repository *repo,
 git_tree *parent,
 git_oid *note_oid,
 const char *annotated_object_sha,
 int fanout,
 int current_error)
{
 GIT_UNUSED(note_oid);
 GIT_UNUSED(current_error);

 return tree_write(out, repo, parent, ((void*)0), annotated_object_sha + fanout, 0);
}
