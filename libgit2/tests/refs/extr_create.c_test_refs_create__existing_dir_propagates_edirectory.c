
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_EDIRECTORY ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,char const*,int *,int,int *) ;
 int git_reference_free (int *) ;

void test_refs_create__existing_dir_propagates_edirectory(void)
{
 git_reference *new_reference, *fail_reference;
 git_oid id;
 const char *dir_head = "refs/heads/new-dir/new-head",
  *fail_head = "refs/heads/new-dir";

 git_oid_fromstr(&id, current_master_tip);


 cl_git_pass(git_reference_create(&new_reference, g_repo, dir_head, &id, 1, ((void*)0)));
 cl_git_fail_with(GIT_EDIRECTORY,
  git_reference_create(&fail_reference, g_repo, fail_head, &id, 0, ((void*)0)));

 git_reference_free(new_reference);
}
