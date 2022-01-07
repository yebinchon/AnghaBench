
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_annotated_commit ;


 int BRANCH_ID ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_merge (int ,int const**,int,int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int repo ;

__attribute__((used)) static void merge_branch(void)
{
 git_oid their_id;
 git_annotated_commit *their_head;

 cl_git_pass(git_oid_fromstr(&their_id, BRANCH_ID));
 cl_git_pass(git_annotated_commit_lookup(&their_head, repo, &their_id));

 cl_git_pass(git_merge(repo, (const git_annotated_commit **)&their_head,
  1, ((void*)0), ((void*)0)));

 git_annotated_commit_free(their_head);
}
