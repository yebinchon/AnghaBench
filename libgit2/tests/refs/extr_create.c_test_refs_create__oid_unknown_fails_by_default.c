
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int cl_git_fail (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int **,int ,char const*,int *,int ,int *) ;
 int git_reference_lookup (int **,int ,char const*) ;

void test_refs_create__oid_unknown_fails_by_default(void)
{
 git_reference *new_reference, *looked_up_ref;
 git_oid id;

 const char *new_head = "refs/heads/new-head";

 git_oid_fromstr(&id, "deadbeef3f795b2b4353bcce3a527ad0a4f7f644");


 cl_git_fail(git_reference_create(&new_reference, g_repo, new_head, &id, 0, ((void*)0)));


 cl_git_fail(git_reference_lookup(&looked_up_ref, g_repo, new_head));
}
