
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_git_fail (int ) ;
 int g_repo ;
 int git_reference_name_to_id (int *,int ,char*) ;

void test_refs_lookup__invalid_name(void)
{
 git_oid oid;
 cl_git_fail(git_reference_name_to_id(&oid, g_repo, "/refs/tags/point_to_blob"));
}
