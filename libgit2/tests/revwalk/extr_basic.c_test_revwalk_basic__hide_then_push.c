
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _walk ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_revwalk_hide (int ,int *) ;
 scalar_t__ git_revwalk_next (int *,int ) ;
 int git_revwalk_push (int ,int *) ;
 int revwalk_basic_setup_walk (int *) ;

void test_revwalk_basic__hide_then_push(void)
{
 git_oid oid;
 int i = 0;

 revwalk_basic_setup_walk(((void*)0));
 cl_git_pass(git_oid_fromstr(&oid, "5b5b025afb0b4c913b4c338a42934a3863bf3644"));

 cl_git_pass(git_revwalk_hide(_walk, &oid));
 cl_git_pass(git_revwalk_push(_walk, &oid));

 while (git_revwalk_next(&oid, _walk) == 0)
  i++;

 cl_assert_equal_i(i, 0);
}
