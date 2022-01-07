
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _walk ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_revwalk_next (int *,int ) ;
 int git_revwalk_push_glob (int ,char*) ;
 int revwalk_basic_setup_walk (char*) ;

void test_revwalk_basic__glob_heads_with_invalid(void)
{
 int i;
 git_oid oid;

 revwalk_basic_setup_walk("testrepo");

 cl_git_mkfile("testrepo/.git/refs/heads/garbage", "not-a-ref");
 cl_git_pass(git_revwalk_push_glob(_walk, "heads"));

 for (i = 0; !git_revwalk_next(&oid, _walk); ++i)
               ;


 cl_assert_equal_i(20, i);
}
