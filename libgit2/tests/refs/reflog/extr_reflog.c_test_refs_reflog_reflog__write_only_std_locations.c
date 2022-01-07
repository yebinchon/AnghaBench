
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int assert_has_reflog (int,char*) ;
 int cl_git_pass (int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,char*,int *,int,int *) ;
 int git_reference_free (int *) ;

void test_refs_reflog_reflog__write_only_std_locations(void)
{
 git_reference *ref;
 git_oid id;

 git_oid_fromstr(&id, current_master_tip);

 cl_git_pass(git_reference_create(&ref, g_repo, "refs/heads/foo", &id, 1, ((void*)0)));
 git_reference_free(ref);
 cl_git_pass(git_reference_create(&ref, g_repo, "refs/tags/foo", &id, 1, ((void*)0)));
 git_reference_free(ref);
 cl_git_pass(git_reference_create(&ref, g_repo, "refs/notes/foo", &id, 1, ((void*)0)));
 git_reference_free(ref);

 assert_has_reflog(1, "refs/heads/foo");
 assert_has_reflog(0, "refs/tags/foo");
 assert_has_reflog(1, "refs/notes/foo");

}
