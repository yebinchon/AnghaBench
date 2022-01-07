
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_commit ;


 int _repo ;
 int ahead ;
 int behind ;
 int cl_assert_equal_sz (int,int) ;
 int cl_git_pass (int ) ;
 int * commit ;
 int git_commit_free (int *) ;
 int * git_commit_id (int *) ;
 int git_commit_nth_gen_ancestor (int **,int *,int) ;
 int git_graph_ahead_behind (int*,int*,int ,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_graph_ahead_behind__returns_correct_result(void)
{
 git_oid oid;
 git_oid oid2;
 git_commit *other;

 cl_git_pass(git_oid_fromstr(&oid, "e90810b8df3e80c413d903f631643c716887138d"));
 cl_git_pass(git_oid_fromstr(&oid2, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));

 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo, &oid, &oid2));
 cl_assert_equal_sz(2, ahead);
 cl_assert_equal_sz(6, behind);

 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo, git_commit_id(commit), git_commit_id(commit)));
 cl_assert_equal_sz(ahead, behind);
 cl_git_pass(git_commit_nth_gen_ancestor(&other, commit, 1));

 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo, git_commit_id(commit), git_commit_id(other)));
 cl_assert_equal_sz(ahead, behind + 2);
 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo, git_commit_id(other), git_commit_id(commit)));
 cl_assert_equal_sz(ahead + 2, behind);

 git_commit_free(other);

 cl_git_pass(git_commit_nth_gen_ancestor(&other, commit, 3));

 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo, git_commit_id(commit), git_commit_id(other)));
 cl_assert_equal_sz(ahead, behind + 4);
 cl_git_pass(git_graph_ahead_behind(&ahead, &behind, _repo, git_commit_id(other), git_commit_id(commit)));
 cl_assert_equal_sz(ahead + 4, behind);

 git_commit_free(other);
}
