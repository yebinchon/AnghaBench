
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;
struct TYPE_3__ {size_t member_0; int * member_2; int const** member_1; } ;
typedef TYPE_1__ commit_parent_data ;


 int assert (int ) ;
 int commit_parent_from_array ;
 int git_commit__create_internal (int *,int *,char const*,int const*,int const*,char const*,char const*,int ,int ,TYPE_1__*,int) ;
 int git_tree_id (int const*) ;
 int * git_tree_owner (int const*) ;

int git_commit_create(
 git_oid *id,
 git_repository *repo,
 const char *update_ref,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message,
 const git_tree *tree,
 size_t parent_count,
 const git_commit *parents[])
{
 commit_parent_data data = { parent_count, parents, repo };

 assert(tree && git_tree_owner(tree) == repo);

 return git_commit__create_internal(
  id, repo, update_ref, author, committer,
  message_encoding, message, git_tree_id(tree),
  commit_parent_from_array, &data, 0);
}
