
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int last_commit; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_annotated_commit ;


 int GIT_UNUSED (int const*) ;
 int git_annotated_commit_id (int const*) ;
 int git_commit_lookup (int *,int *,int ) ;

__attribute__((used)) static int rebase_init_inmemory(
 git_rebase *rebase,
 git_repository *repo,
 const git_annotated_commit *branch,
 const git_annotated_commit *upstream,
 const git_annotated_commit *onto)
{
 GIT_UNUSED(branch);
 GIT_UNUSED(upstream);

 return git_commit_lookup(
  &rebase->last_commit, repo, git_annotated_commit_id(onto));
}
