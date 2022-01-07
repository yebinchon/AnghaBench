
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_odb ;


 int GIT_OBJECT_BLOB ;
 int cl_git_pass (int ) ;
 int git_odb_add_backend (int *,int *,int) ;
 int git_odb_backend_loose (int **,char*,int,int,int,int) ;
 int git_odb_free (int *) ;
 int git_odb_new (int **) ;
 int git_odb_write (int *,int *,char*,int,int ) ;

__attribute__((used)) static void write_object_to_loose_odb(int fsync)
{
 git_odb *odb;
 git_odb_backend *backend;
 git_oid oid;

 cl_git_pass(git_odb_new(&odb));
 cl_git_pass(git_odb_backend_loose(&backend, "test-objects", -1, fsync, 0777, 0666));
 cl_git_pass(git_odb_add_backend(odb, backend, 1));
 cl_git_pass(git_odb_write(&oid, odb, "Test data\n", 10, GIT_OBJECT_BLOB));
 git_odb_free(odb);
}
