
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object_t ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_object_peel (int **,int *,int ) ;
 int git_object_type (int *) ;
 int git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static void assert_peel(
 const char *sha,
 git_object_t requested_type,
 const char* expected_sha,
 git_object_t expected_type)
{
 git_oid oid, expected_oid;
 git_object *obj;
 git_object *peeled;

 cl_git_pass(git_oid_fromstr(&oid, sha));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_object_peel(&peeled, obj, requested_type));

 cl_git_pass(git_oid_fromstr(&expected_oid, expected_sha));
 cl_assert_equal_oid(&expected_oid, git_object_id(peeled));

 cl_assert_equal_i(expected_type, git_object_type(peeled));

 git_object_free(peeled);
 git_object_free(obj);
}
