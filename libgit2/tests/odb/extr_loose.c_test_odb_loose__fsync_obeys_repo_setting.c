
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_odb ;


 int GIT_OBJECT_BLOB ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int *,char*,int) ;
 int git_odb_write (int *,int *,char*,int,int ) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_odb__weakptr (int **,int *) ;
 int git_repository_open (int **,char*) ;
 scalar_t__ p_fsync__cnt ;

void test_odb_loose__fsync_obeys_repo_setting(void)
{
 git_repository *repo;
 git_odb *odb;
 git_oid oid;

 cl_git_pass(git_repository_init(&repo, "test-objects", 1));
 cl_git_pass(git_repository_odb__weakptr(&odb, repo));
 cl_git_pass(git_odb_write(&oid, odb, "No fsync here\n", 14, GIT_OBJECT_BLOB));
 cl_assert(p_fsync__cnt == 0);
 git_repository_free(repo);

 cl_git_pass(git_repository_open(&repo, "test-objects"));
 cl_repo_set_bool(repo, "core.fsyncObjectFiles", 1);
 cl_git_pass(git_repository_odb__weakptr(&odb, repo));
 cl_git_pass(git_odb_write(&oid, odb, "Now fsync\n", 10, GIT_OBJECT_BLOB));
 cl_assert(p_fsync__cnt > 0);
 git_repository_free(repo);
}
