
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_odb ;


 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_odb_add_backend (int *,int *,int) ;
 int git_odb_backend_loose (int **,char*,int,int ,int,int) ;
 int git_odb_free (int *) ;
 int git_odb_new (int **) ;
 int git_odb_write (int *,int *,char*,int,int ) ;
 int p_stat (char*,struct stat*) ;
 int p_umask (int) ;

void test_write_object_permission(
 mode_t dir_mode, mode_t file_mode,
 mode_t expected_dir_mode, mode_t expected_file_mode)
{
 git_odb *odb;
 git_odb_backend *backend;
 git_oid oid;
 struct stat statbuf;
 mode_t mask, os_mask;







 os_mask = 0777;


 mask = p_umask(0);
 p_umask(mask);

 cl_git_pass(git_odb_new(&odb));
 cl_git_pass(git_odb_backend_loose(&backend, "test-objects", -1, 0, dir_mode, file_mode));
 cl_git_pass(git_odb_add_backend(odb, backend, 1));
 cl_git_pass(git_odb_write(&oid, odb, "Test data\n", 10, GIT_OBJECT_BLOB));

 cl_git_pass(p_stat("test-objects/67", &statbuf));
 cl_assert_equal_i(statbuf.st_mode & os_mask, (expected_dir_mode & ~mask) & os_mask);

 cl_git_pass(p_stat("test-objects/67/b808feb36201507a77f85e6d898f0a2836e4a5", &statbuf));
 cl_assert_equal_i(statbuf.st_mode & os_mask, (expected_file_mode & ~mask) & os_mask);

 git_odb_free(odb);
}
