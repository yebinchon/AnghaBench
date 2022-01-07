
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_git_fail (int ) ;
 int git_oid_fromstr (int *,char*) ;

void test_object_raw_fromstr__fail_on_invalid_oid_string(void)
{
 git_oid out;
 cl_git_fail(git_oid_fromstr(&out, ""));
 cl_git_fail(git_oid_fromstr(&out, "moo"));
 cl_git_fail(git_oid_fromstr(&out, "16a67770b7d8d72317c4b775213c23a8bd74f5ez"));
}
