
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_libgit2_opts (int ,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int **,int ,char const*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;

void test_refs_create__oid_unknown_succeeds_without_strict(void)
{
 git_reference *new_reference, *looked_up_ref;
 git_oid id;

 const char *new_head = "refs/heads/new-head";

 git_oid_fromstr(&id, "deadbeef3f795b2b4353bcce3a527ad0a4f7f644");

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));


 cl_git_pass(git_reference_create(&new_reference, g_repo, new_head, &id, 0, ((void*)0)));
 git_reference_free(new_reference);


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, new_head));
 git_reference_free(looked_up_ref);
}
