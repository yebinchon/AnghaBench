
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_commit ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_commit__free (int *) ;
 int git_commit_header_field (TYPE_1__*,int *,char*) ;
 int parse_commit (int **,int ) ;
 int * passing_commit_cases ;

void test_commit_parse__arbitrary_field(void)
{
 git_commit *commit;
 git_buf buf = GIT_BUF_INIT;
 const char *gpgsig = "-----BEGIN PGP SIGNATURE-----\nVersion: GnuPG v1.4.12 (Darwin)\n\niQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\no6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\nJGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\nAsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\nSphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\nwho/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\n6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\ncmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\nc6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\nZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\n7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\ncpxtDQQMGYFpXK/71stq\n=ozeK\n-----END PGP SIGNATURE-----";
 cl_git_pass(parse_commit(&commit, passing_commit_cases[4]));

 cl_git_pass(git_commit_header_field(&buf, commit, "tree"));
 cl_assert_equal_s("6b79e22d69bf46e289df0345a14ca059dfc9bdf6", buf.ptr);
 git_buf_clear(&buf);

 cl_git_pass(git_commit_header_field(&buf, commit, "parent"));
 cl_assert_equal_s("34734e478d6cf50c27c9d69026d93974d052c454", buf.ptr);
 git_buf_clear(&buf);

 cl_git_pass(git_commit_header_field(&buf, commit, "gpgsig"));
 cl_assert_equal_s(gpgsig, buf.ptr);
 git_buf_clear(&buf);

 cl_git_fail_with(GIT_ENOTFOUND, git_commit_header_field(&buf, commit, "awesomeness"));
 cl_git_fail_with(GIT_ENOTFOUND, git_commit_header_field(&buf, commit, "par"));

 git_commit__free(commit);
 cl_git_pass(parse_commit(&commit, passing_commit_cases[0]));

 cl_git_pass(git_commit_header_field(&buf, commit, "committer"));
 cl_assert_equal_s("Vicent Marti <tanoku@gmail.com> 1273848544 +0200", buf.ptr);

 git_buf_dispose(&buf);
 git_commit__free(commit);
}
