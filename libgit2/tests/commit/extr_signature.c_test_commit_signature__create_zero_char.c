
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;


 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 int git_signature_new (int **,char*,char*,int,int) ;

void test_commit_signature__create_zero_char(void)
{

 git_signature *sign;
 cl_git_fail(git_signature_new(&sign, "", "x@y.z", 1234567890, 60));
 cl_assert(sign == ((void*)0));
}
