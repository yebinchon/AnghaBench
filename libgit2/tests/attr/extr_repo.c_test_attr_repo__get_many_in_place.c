
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ATTR_IS_TRUE (char const*) ;
 int GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_attr_get_many (char const**,int ,int ,char*,int,char const**) ;

void test_attr_repo__get_many_in_place(void)
{
 const char *vals[4] = { "repoattr", "rootattr", "missingattr", "subattr" };





 cl_git_pass(git_attr_get_many(vals, g_repo, 0, "sub/subdir_test1", 4, vals));

 cl_assert(GIT_ATTR_IS_TRUE(vals[0]));
 cl_assert(GIT_ATTR_IS_TRUE(vals[1]));
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(vals[2]));
 cl_assert_equal_s("yes", vals[3]);
}
