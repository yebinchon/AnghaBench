
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;

void test_refs_lookup__oid(void)
{
 git_oid tag, expected;

 cl_git_pass(git_reference_name_to_id(&tag, g_repo, "refs/tags/point_to_blob"));
 cl_git_pass(git_oid_fromstr(&expected, "1385f264afb75a56a5bec74243be9b367ba4ca08"));
 cl_assert_equal_oid(&expected, &tag);
}
