
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int try_build_signature (char*,char*,int,int) ;

void test_commit_signature__create_empties(void)
{

 cl_git_pass(try_build_signature("nulltoken", "emeric.fermas@gmail.com", 1234567890, 60));

 cl_git_fail(try_build_signature("", "emeric.fermas@gmail.com", 1234567890, 60));
 cl_git_fail(try_build_signature("   ", "emeric.fermas@gmail.com", 1234567890, 60));
 cl_git_fail(try_build_signature("nulltoken", "", 1234567890, 60));
 cl_git_fail(try_build_signature("nulltoken", "  ", 1234567890, 60));
}
