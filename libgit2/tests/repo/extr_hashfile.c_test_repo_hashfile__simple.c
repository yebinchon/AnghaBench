
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_OFS_DELTA ;
 int _repo ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_odb_hashfile (int *,char*,int ) ;
 int git_repository_hashfile (int *,int ,char*,int ,int *) ;
 int git_repository_workdir (int ) ;

void test_repo_hashfile__simple(void)
{
 git_oid a, b;
 git_buf full = GIT_BUF_INIT;


 cl_git_pass(git_odb_hashfile(&a, "status/current_file", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "current_file", GIT_OBJECT_BLOB, ((void*)0)));
 cl_assert_equal_oid(&a, &b);

 cl_git_pass(git_buf_joinpath(&full, git_repository_workdir(_repo), "current_file"));


 cl_git_pass(git_odb_hashfile(&a, full.ptr, GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, full.ptr, GIT_OBJECT_BLOB, ((void*)0)));
 cl_assert_equal_oid(&a, &b);


 cl_git_fail(git_odb_hashfile(&a, full.ptr, GIT_OBJECT_ANY));
 cl_git_fail(git_repository_hashfile(&b, _repo, full.ptr, GIT_OBJECT_OFS_DELTA, ((void*)0)));

 git_buf_dispose(&full);
}
