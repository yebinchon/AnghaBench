
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_refdb ;
typedef int git_oid ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_refdb_compress (int *) ;
 int git_refdb_free (int *) ;
 int git_reference_create (int **,int ,char const*,int *,int ,int *) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;
 int git_repository_refdb (int **,int ) ;
 int reference_is_packed (int *) ;

void test_refs_delete__packed_only(void)
{

 git_reference *ref;
 git_refdb *refdb;
 git_oid id;
 const char *new_ref = "refs/heads/new_ref";

 git_oid_fromstr(&id, current_master_tip);


 cl_git_pass(git_reference_create(&ref, g_repo, new_ref, &id, 0, ((void*)0)));
 git_reference_free(ref);


 cl_git_pass(git_reference_lookup(&ref, g_repo, new_ref));


 cl_assert(reference_is_packed(ref) == 0);


 cl_git_pass(git_repository_refdb(&refdb, g_repo));
 cl_git_pass(git_refdb_compress(refdb));


 git_reference_free(ref);
 cl_git_pass(git_reference_lookup(&ref, g_repo, new_ref));


 cl_assert(reference_is_packed(ref) == 1);


 cl_git_pass(git_reference_delete(ref));
 git_reference_free(ref);
 git_refdb_free(refdb);
}
