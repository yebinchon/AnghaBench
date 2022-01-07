
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int * commit ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_commit_nth_gen_ancestor (int **,int *,int) ;
 int git_graph_descendant_of (int ,int ,int ) ;

void test_graph_descendant_of__returns_correct_result(void)
{
 git_commit *other;

 cl_assert_equal_i(0, git_graph_descendant_of(_repo, git_commit_id(commit), git_commit_id(commit)));


 cl_git_pass(git_commit_nth_gen_ancestor(&other, commit, 1));

 cl_assert_equal_i(1, git_graph_descendant_of(_repo, git_commit_id(commit), git_commit_id(other)));
 cl_assert_equal_i(0, git_graph_descendant_of(_repo, git_commit_id(other), git_commit_id(commit)));

 git_commit_free(other);


 cl_git_pass(git_commit_nth_gen_ancestor(&other, commit, 3));

 cl_assert_equal_i(1, git_graph_descendant_of(_repo, git_commit_id(commit), git_commit_id(other)));
 cl_assert_equal_i(0, git_graph_descendant_of(_repo, git_commit_id(other), git_commit_id(commit)));

 git_commit_free(other);

}
