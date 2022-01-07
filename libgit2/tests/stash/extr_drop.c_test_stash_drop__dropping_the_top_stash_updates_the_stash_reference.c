
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;


 int cl_assert (int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_oid_cmp (int *,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_stash_drop (int ,int ) ;
 int push_three_states () ;
 int repo ;
 int retrieve_top_stash_id (int *) ;

void test_stash_drop__dropping_the_top_stash_updates_the_stash_reference(void)
{
 git_object *next_top_stash;
 git_oid oid;

 push_three_states();

 retrieve_top_stash_id(&oid);

 cl_git_pass(git_revparse_single(&next_top_stash, repo, "stash@{1}"));
 cl_assert(git_oid_cmp(&oid, git_object_id(next_top_stash)));

 cl_git_pass(git_stash_drop(repo, 0));

 retrieve_top_stash_id(&oid);

 cl_assert_equal_oid(&oid, git_object_id(next_top_stash));

 git_object_free(next_top_stash);
}
