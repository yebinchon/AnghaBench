
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_type (int *) ;
 int git_oid_streq (int ,char const*) ;
 int git_revparse_single (int **,int ,char const*) ;
 int repo ;

__attribute__((used)) static void assert_object_oid(const char* revision, const char* expected_oid, git_object_t type)
{
 int result;
 git_object *obj;

 result = git_revparse_single(&obj, repo, revision);

 if (!expected_oid) {
  cl_assert_equal_i(GIT_ENOTFOUND, result);
  return;
 } else
  cl_assert_equal_i(0, result);

 cl_git_pass(git_oid_streq(git_object_id(obj), expected_oid));
 cl_assert_equal_i(type, git_object_type(obj));
 git_object_free(obj);
}
