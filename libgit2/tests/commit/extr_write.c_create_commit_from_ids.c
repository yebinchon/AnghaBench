
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_oid ;


 int cl_git_pass (int ) ;
 int committer_email ;
 int committer_name ;
 int g_repo ;
 int git_commit_create_from_ids (int *,int ,int *,int *,int *,int *,int ,int const*,int,int const**) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,int ,int ,int,int) ;
 int root_commit_message ;

__attribute__((used)) static int create_commit_from_ids(
 git_oid *result,
 const git_oid *tree_id,
 const git_oid *parent_id)
{
 git_signature *author, *committer;
 const git_oid *parent_ids[1];
 int ret;

 cl_git_pass(git_signature_new(
  &committer, committer_name, committer_email, 123456789, 60));
 cl_git_pass(git_signature_new(
  &author, committer_name, committer_email, 987654321, 90));

 parent_ids[0] = parent_id;

 ret = git_commit_create_from_ids(
  result,
  g_repo,
  ((void*)0),
  author,
  committer,
  ((void*)0),
  root_commit_message,
  tree_id,
  1,
  parent_ids);

 git_signature_free(committer);
 git_signature_free(author);

 return ret;
}
