
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb ;
struct TYPE_3__ {int message; } ;
typedef TYPE_1__ git_error ;


 int GIT_OBJECT_BLOB ;
 int _repo ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fail (int ) ;
 TYPE_1__* git_error_last () ;
 int git_odb_free (int *) ;
 int git_odb_write (int *,int *,char*,int,int ) ;
 int git_repository_odb (int **,int ) ;

void test_odb_backend_nobackend__write_fails_gracefully(void)
{
 git_oid id;
 git_odb *odb;
 const git_error *err;

 git_repository_odb(&odb, _repo);
 cl_git_fail(git_odb_write(&id, odb, "Hello world!\n", 13, GIT_OBJECT_BLOB));

 err = git_error_last();
 cl_assert_equal_s(err->message, "cannot write object - unsupported in the loaded odb backends");

 git_odb_free(odb);
}
