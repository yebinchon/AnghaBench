
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_oid_fromstrp (int *,int ) ;
 int id ;
 int idm ;
 int idp ;
 int str_oid ;
 int str_oid_m ;
 int str_oid_p ;

void test_core_oid__initialize(void)
{
 cl_git_pass(git_oid_fromstr(&id, str_oid));
 cl_git_pass(git_oid_fromstrp(&idp, str_oid_p));
 cl_git_fail(git_oid_fromstrp(&idm, str_oid_m));
}
