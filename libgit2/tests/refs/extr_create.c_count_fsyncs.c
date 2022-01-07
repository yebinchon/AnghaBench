
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_refdb ;
typedef int git_oid ;


 int cl_git_pass (int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_refdb_compress (int *) ;
 int git_refdb_free (int *) ;
 int git_reference_create (int **,int ,char*,int *,int ,char*) ;
 int git_reference_free (int *) ;
 int git_repository_refdb (int **,int ) ;
 size_t p_fsync__cnt ;

__attribute__((used)) static void count_fsyncs(size_t *create_count, size_t *compress_count)
{
 git_reference *ref = ((void*)0);
 git_refdb *refdb;
 git_oid id;

 p_fsync__cnt = 0;

 git_oid_fromstr(&id, current_master_tip);
 cl_git_pass(git_reference_create(&ref, g_repo, "refs/heads/fsync_test", &id, 0, "log message"));
 git_reference_free(ref);

 *create_count = p_fsync__cnt;
 p_fsync__cnt = 0;

 cl_git_pass(git_repository_refdb(&refdb, g_repo));
 cl_git_pass(git_refdb_compress(refdb));
 git_refdb_free(refdb);

 *compress_count = p_fsync__cnt;
 p_fsync__cnt = 0;
}
