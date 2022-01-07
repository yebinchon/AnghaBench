
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_refdb ;
typedef int git_oid ;


 int GIT_REFERENCE_DIRECT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_cpy (int *,int ) ;
 int git_refdb_compress (int *) ;
 int git_refdb_free (int *) ;
 int git_reference_create (int **,int ,int ,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_target (int *) ;
 int git_reference_type (int *) ;
 int git_repository_refdb (int **,int ) ;
 int ref_master_name ;
 int ref_one_name ;
 int ref_one_name_new ;
 int ref_two_name ;

void test_refs_rename__overwrite(void)
{

 git_reference *ref, *ref_one, *ref_one_new, *ref_two;
 git_refdb *refdb;
 git_oid id;

 cl_git_pass(git_reference_lookup(&ref, g_repo, ref_master_name));
 cl_assert(git_reference_type(ref) & GIT_REFERENCE_DIRECT);

 git_oid_cpy(&id, git_reference_target(ref));


 cl_git_pass(git_reference_create(&ref_one, g_repo, ref_one_name, &id, 0, ((void*)0)));
 cl_git_pass(git_reference_create(&ref_two, g_repo, ref_two_name, &id, 0, ((void*)0)));


 cl_git_pass(git_repository_refdb(&refdb, g_repo));
 cl_git_pass(git_refdb_compress(refdb));


 cl_git_fail(git_reference_create(&ref_one_new, g_repo, ref_one_name_new, &id, 0, ((void*)0)));


 cl_git_fail(git_reference_lookup(&ref_one_new, g_repo, ref_one_name_new));

 git_reference_free(ref);
 git_reference_free(ref_one);
 git_reference_free(ref_one_new);
 git_reference_free(ref_two);
 git_refdb_free(refdb);
}
