
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {int klass; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OBJECT ;
 int GIT_OBJECT_COMMIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_commit_extract_signature (TYPE_1__*,TYPE_1__*,int ,int *,char*) ;
 TYPE_2__* git_error_last () ;
 int git_odb_write (int *,int *,char const*,int ,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_odb__weakptr (int **,int ) ;
 char const** passing_commit_cases ;
 int strlen (char const*) ;

void test_commit_parse__extract_signature(void)
{
 git_odb *odb;
 git_oid commit_id;
 git_buf signature = GIT_BUF_INIT, signed_data = GIT_BUF_INIT;
 const char *gpgsig = "-----BEGIN PGP SIGNATURE-----\nVersion: GnuPG v1.4.12 (Darwin)\n\niQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\no6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\nJGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\nAsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\nSphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\nwho/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\n6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\ncmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\nc6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\nZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\n7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\ncpxtDQQMGYFpXK/71stq\n=ozeK\n-----END PGP SIGNATURE-----";
 const char *data = "tree 6b79e22d69bf46e289df0345a14ca059dfc9bdf6\nparent 34734e478d6cf50c27c9d69026d93974d052c454\nauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\ncommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\na simple commit which works\n";






 const char *oneline_signature = "tree 51832e6397b30309c8bcad9c55fa6ae67778f378\nparent a1b6decaaac768b5e01e1b5dbf5b2cc081bed1eb\nauthor Some User <someuser@gmail.com> 1454537944 -0700\ncommitter Some User <someuser@gmail.com> 1454537944 -0700\ngpgsig bad\n\ncorrupt signature\n";







 const char *oneline_data = "tree 51832e6397b30309c8bcad9c55fa6ae67778f378\nparent a1b6decaaac768b5e01e1b5dbf5b2cc081bed1eb\nauthor Some User <someuser@gmail.com> 1454537944 -0700\ncommitter Some User <someuser@gmail.com> 1454537944 -0700\n\ncorrupt signature\n";







 cl_git_pass(git_repository_odb__weakptr(&odb, g_repo));
 cl_git_pass(git_odb_write(&commit_id, odb, passing_commit_cases[4], strlen(passing_commit_cases[4]), GIT_OBJECT_COMMIT));

 cl_git_pass(git_commit_extract_signature(&signature, &signed_data, g_repo, &commit_id, ((void*)0)));
 cl_assert_equal_s(gpgsig, signature.ptr);
 cl_assert_equal_s(data, signed_data.ptr);

 git_buf_clear(&signature);
 git_buf_clear(&signed_data);

 cl_git_pass(git_commit_extract_signature(&signature, &signed_data, g_repo, &commit_id, "gpgsig"));
 cl_assert_equal_s(gpgsig, signature.ptr);
 cl_assert_equal_s(data, signed_data.ptr);


 cl_git_pass(git_oid_fromstr(&commit_id, "45dd856fdd4d89b884c340ba0e047752d9b085d6"));
 cl_git_fail_with(GIT_ENOTFOUND, git_commit_extract_signature(&signature, &signed_data, g_repo, &commit_id, ((void*)0)));
 cl_assert_equal_i(GIT_ERROR_INVALID, git_error_last()->klass);


 cl_git_pass(git_odb_write(&commit_id, odb, passing_commit_cases[1], strlen(passing_commit_cases[1]), GIT_OBJECT_COMMIT));
 cl_git_fail_with(GIT_ENOTFOUND, git_commit_extract_signature(&signature, &signed_data, g_repo, &commit_id, ((void*)0)));
 cl_assert_equal_i(GIT_ERROR_OBJECT, git_error_last()->klass);


 git_buf_clear(&signature);
 git_buf_clear(&signed_data);
 cl_git_pass(git_odb_write(&commit_id, odb, oneline_signature, strlen(oneline_signature), GIT_OBJECT_COMMIT));
 cl_git_pass(git_commit_extract_signature(&signature, &signed_data, g_repo, &commit_id, ((void*)0)));
 cl_assert_equal_s("bad", signature.ptr);
 cl_assert_equal_s(oneline_data, signed_data.ptr);


 git_buf_dispose(&signature);
 git_buf_dispose(&signed_data);

}
