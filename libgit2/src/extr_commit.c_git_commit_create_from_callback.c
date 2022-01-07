
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit_parent_callback ;


 int git_commit__create_internal (int *,int *,char const*,int const*,int const*,char const*,char const*,int const*,int ,void*,int) ;

int git_commit_create_from_callback(
 git_oid *id,
 git_repository *repo,
 const char *update_ref,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message,
 const git_oid *tree,
 git_commit_parent_callback parent_cb,
 void *parent_payload)
{
 return git_commit__create_internal(
  id, repo, update_ref, author, committer, message_encoding, message,
  tree, parent_cb, parent_payload, 1);
}
