
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int to; int from; int flags; } ;
typedef TYPE_1__ git_revspec ;
typedef int git_revparse_mode_t ;


 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (char*,char const*) ;
 int g_repo ;
 int git_object_free (int ) ;
 int git_object_id (int ) ;
 int git_oid_fmt (char*,int ) ;
 int git_revparse (TYPE_1__*,int ,char const*) ;

__attribute__((used)) static void test_rangelike(const char *rangelike,
         const char *expected_left,
         const char *expected_right,
         git_revparse_mode_t expected_revparseflags)
{
 char objstr[64] = {0};
 git_revspec revspec;
 int error;

 error = git_revparse(&revspec, g_repo, rangelike);

 if (expected_left != ((void*)0)) {
  cl_assert_equal_i(0, error);
  cl_assert_equal_i(revspec.flags, expected_revparseflags);
  git_oid_fmt(objstr, git_object_id(revspec.from));
  cl_assert_equal_s(objstr, expected_left);
  git_oid_fmt(objstr, git_object_id(revspec.to));
  cl_assert_equal_s(objstr, expected_right);
 } else
  cl_assert(error != 0);

 git_object_free(revspec.from);
 git_object_free(revspec.to);
}
