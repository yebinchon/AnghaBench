
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
typedef int git_buf ;
typedef int git_array_oid_t ;
struct TYPE_3__ {size_t member_0; int * member_2; int const** member_1; } ;
typedef TYPE_1__ commit_parent_data ;


 int GIT_ARRAY_INIT ;
 int assert (int ) ;
 int commit_parent_from_array ;
 int git_array_clear (int ) ;
 int git_commit__create_buffer_internal (int *,int const*,int const*,char const*,char const*,int const*,int *) ;
 int * git_tree_id (int const*) ;
 int * git_tree_owner (int const*) ;
 int validate_tree_and_parents (int *,int *,int const*,int ,TYPE_1__*,int *,int) ;

int git_commit_create_buffer(git_buf *out,
 git_repository *repo,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message,
 const git_tree *tree,
 size_t parent_count,
 const git_commit *parents[])
{
 int error;
 commit_parent_data data = { parent_count, parents, repo };
 git_array_oid_t parents_arr = GIT_ARRAY_INIT;
 const git_oid *tree_id;

 assert(tree && git_tree_owner(tree) == repo);

 tree_id = git_tree_id(tree);

 if ((error = validate_tree_and_parents(&parents_arr, repo, tree_id, commit_parent_from_array, &data, ((void*)0), 1)) < 0)
  return error;

 error = git_commit__create_buffer_internal(
  out, author, committer,
  message_encoding, message, tree_id,
  &parents_arr);

 git_array_clear(parents_arr);
 return error;
}
