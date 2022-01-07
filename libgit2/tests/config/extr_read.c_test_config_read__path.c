
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_13__ {struct TYPE_13__* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_GET_SEARCH_PATH ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_assert_equal_s (TYPE_1__*,TYPE_1__*) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_path (TYPE_1__*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_libgit2_opts (int ,int ,TYPE_1__*) ;
 int git_path_join_unrooted (TYPE_1__*,char*,TYPE_1__*,int *) ;
 int git_path_prettify (TYPE_1__*,char*,int *) ;
 int p_mkdir (char*,int) ;

void test_config_read__path(void)
{
 git_config *cfg;
 git_buf path = GIT_BUF_INIT;
 git_buf old_path = GIT_BUF_INIT;
 git_buf home_path = GIT_BUF_INIT;
 git_buf expected_path = GIT_BUF_INIT;

 cl_git_pass(p_mkdir("fakehome", 0777));
 cl_git_pass(git_path_prettify(&home_path, "fakehome", ((void*)0)));
 cl_git_pass(git_libgit2_opts(GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, &old_path));
 cl_git_pass(git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, home_path.ptr));
 cl_git_mkfile("./testconfig", "[some]\n path = ~/somefile");
 cl_git_pass(git_path_join_unrooted(&expected_path, "somefile", home_path.ptr, ((void*)0)));

 cl_git_pass(git_config_open_ondisk(&cfg, "./testconfig"));
 cl_git_pass(git_config_get_path(&path, cfg, "some.path"));
 cl_assert_equal_s(expected_path.ptr, path.ptr);
 git_buf_dispose(&path);

 cl_git_mkfile("./testconfig", "[some]\n path = ~/");
 cl_git_pass(git_path_join_unrooted(&expected_path, "", home_path.ptr, ((void*)0)));

 cl_git_pass(git_config_get_path(&path, cfg, "some.path"));
 cl_assert_equal_s(expected_path.ptr, path.ptr);
 git_buf_dispose(&path);

 cl_git_mkfile("./testconfig", "[some]\n path = ~");
 cl_git_pass(git_buf_sets(&expected_path, home_path.ptr));

 cl_git_pass(git_config_get_path(&path, cfg, "some.path"));
 cl_assert_equal_s(expected_path.ptr, path.ptr);
 git_buf_dispose(&path);

 cl_git_mkfile("./testconfig", "[some]\n path = ~user/foo");
 cl_git_fail(git_config_get_path(&path, cfg, "some.path"));

 cl_git_pass(git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, old_path.ptr));
 git_buf_dispose(&old_path);
 git_buf_dispose(&home_path);
 git_buf_dispose(&expected_path);
 git_config_free(cfg);
}
