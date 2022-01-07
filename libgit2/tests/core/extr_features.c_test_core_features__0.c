
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_FEATURE_HTTPS ;
 int GIT_FEATURE_NSEC ;
 int GIT_FEATURE_SSH ;
 int GIT_FEATURE_THREADS ;
 int LIBGIT2_VER_MAJOR ;
 int LIBGIT2_VER_MINOR ;
 int LIBGIT2_VER_REVISION ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int) ;
 int git_libgit2_features () ;
 int git_libgit2_version (int*,int*,int*) ;

void test_core_features__0(void)
{
 int major, minor, rev, caps;

 git_libgit2_version(&major, &minor, &rev);
 cl_assert_equal_i(LIBGIT2_VER_MAJOR, major);
 cl_assert_equal_i(LIBGIT2_VER_MINOR, minor);
 cl_assert_equal_i(LIBGIT2_VER_REVISION, rev);

 caps = git_libgit2_features();




 cl_assert((caps & GIT_FEATURE_THREADS) == 0);
 cl_assert((caps & GIT_FEATURE_SSH) == 0);





 cl_assert((caps & GIT_FEATURE_NSEC) == 0);

}
