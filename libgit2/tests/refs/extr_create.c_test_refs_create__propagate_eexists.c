
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_EEXISTS ;
 int cl_assert (int) ;
 int current_head_target ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,int ,int *,int,int *) ;
 int git_reference_symbolic_create (int **,int ,char*,int ,int,int *) ;

void test_refs_create__propagate_eexists(void)
{
 int error;
 git_oid oid;
 git_reference *ref;


 git_oid_fromstr(&oid, current_master_tip);
 error = git_reference_create(&ref, g_repo, current_head_target, &oid, 0, ((void*)0));
 cl_assert(error == GIT_EEXISTS);

 error = git_reference_symbolic_create(&ref, g_repo, "HEAD", current_head_target, 0, ((void*)0));
 cl_assert(error == GIT_EEXISTS);
}
