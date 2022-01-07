
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_ERROR_REPOSITORY ;
 int GIT_UNUSED (int) ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int insert_note_in_tree_eexists_cb(git_tree **out,
 git_repository *repo,
 git_tree *parent,
 git_oid *note_oid,
 const char *annotated_object_sha,
 int fanout,
 int current_error)
{
 GIT_UNUSED(out);
 GIT_UNUSED(repo);
 GIT_UNUSED(parent);
 GIT_UNUSED(note_oid);
 GIT_UNUSED(fanout);

 git_error_set(GIT_ERROR_REPOSITORY, "note for '%s' exists already", annotated_object_sha);
 return current_error;
}
