
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;

void test_config_write__to_file_with_only_comment(void)
{
 git_config *cfg;
 const char *filename = "config-file";
 git_buf result = GIT_BUF_INIT;

 cl_git_mkfile(filename, "\n\n");
 cl_git_pass(git_config_open_ondisk(&cfg, filename));
 cl_git_pass(git_config_set_string(cfg, "section.name", "value"));
 git_config_free(cfg);

 cl_git_pass(git_futils_readbuffer(&result, "config-file"));
 cl_assert_equal_s("\n\n[section]\n\tname = value\n", result.ptr);

 git_buf_dispose(&result);
}
