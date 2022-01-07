
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int GIT_OBJECT_ANY ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,char const*) ;

void test_object_lookup__lookup_nonexisting_returns_enotfound(void)
{
 const char *unknown = "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef";
 git_oid oid;
 git_object *object;

 cl_git_pass(git_oid_fromstr(&oid, unknown));
 cl_assert_equal_i(
  GIT_ENOTFOUND, git_object_lookup(&object, g_repo, &oid, GIT_OBJECT_ANY));
}
