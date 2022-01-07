
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_diff ;


 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_diff_patchid (int *,int *,int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void verify_patch_id(const char *diff_content, const char *expected_id)
{
 git_oid expected_oid, actual_oid;
 git_diff *diff;

 cl_git_pass(git_oid_fromstr(&expected_oid, expected_id));
 cl_git_pass(git_diff_from_buffer(&diff, diff_content, strlen(diff_content)));
 cl_git_pass(git_diff_patchid(&actual_oid, diff, ((void*)0)));

 cl_assert_equal_oid(&expected_oid, &actual_oid);

 git_diff_free(diff);
}
