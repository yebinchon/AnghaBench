
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char const*) ;
 int git_repository_hashfile (int *,int ,char const*,int ,int *) ;

__attribute__((used)) static void ensure_workdir_oid(const char *path, const char *oid_str)
{
 git_oid expected, actual;

 cl_git_pass(git_oid_fromstr(&expected, oid_str));
 cl_git_pass(git_repository_hashfile(&actual, g_repo, path, GIT_OBJECT_BLOB, ((void*)0)));
 cl_assert_equal_oid(&expected, &actual);
}
