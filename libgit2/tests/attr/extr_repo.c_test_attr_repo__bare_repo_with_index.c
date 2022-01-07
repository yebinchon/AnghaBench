
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_ATTR_IS_FALSE (char const*) ;
 int GIT_ATTR_IS_TRUE (char const*) ;
 int GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_attr_get_many (char const**,int ,int ,char*,int,char const**) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_path_exists (char*) ;
 int git_repository_index (int **,int ) ;
 int git_repository_set_bare (int ) ;
 int p_unlink (char*) ;

void test_attr_repo__bare_repo_with_index(void)
{
 const char *names[4] = { "test1", "test2", "test3", "test4" };
 const char *values[4];
 git_index *index;

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_mkfile(
  "attr/.gitattributes",
  "*.txt test1 test2=foobar -test3\n"
  "trial.txt -test1 test2=barfoo !test3 test4\n");
 cl_git_pass(git_index_add_bypath(index, ".gitattributes"));
 git_index_free(index);

 cl_must_pass(p_unlink("attr/.gitattributes"));
 cl_assert(!git_path_exists("attr/.gitattributes"));

 cl_git_pass(git_repository_set_bare(g_repo));

 cl_git_pass(git_attr_get_many(values, g_repo, 0, "file.txt", 4, names));

 cl_assert(GIT_ATTR_IS_TRUE(values[0]));
 cl_assert_equal_s("foobar", values[1]);
 cl_assert(GIT_ATTR_IS_FALSE(values[2]));
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(values[3]));

 cl_git_pass(git_attr_get_many(values, g_repo, 0, "trial.txt", 4, names));

 cl_assert(GIT_ATTR_IS_FALSE(values[0]));
 cl_assert_equal_s("barfoo", values[1]);
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(values[2]));
 cl_assert(GIT_ATTR_IS_TRUE(values[3]));

 cl_git_pass(git_attr_get_many(values, g_repo, 0, "sub/sub/subdir.txt", 4, names));

 cl_assert(GIT_ATTR_IS_TRUE(values[0]));
 cl_assert_equal_s("foobar", values[1]);
 cl_assert(GIT_ATTR_IS_FALSE(values[2]));
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(values[3]));
}
