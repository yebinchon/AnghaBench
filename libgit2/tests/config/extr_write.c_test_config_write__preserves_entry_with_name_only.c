
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
 int git_futils_readbuffer (TYPE_1__*,char const*) ;

void test_config_write__preserves_entry_with_name_only(void)
{
 const char *file_name = "config-empty-value";
 git_config *cfg;
 git_buf newfile = GIT_BUF_INIT;


 cl_git_mkfile(file_name, "[section \"foo\"]\n\tname\n");
 cl_git_pass(git_config_open_ondisk(&cfg, file_name));
 cl_git_pass(git_config_set_string(cfg, "newsection.newname", "new_value"));
 cl_git_pass(git_config_set_string(cfg, "section.foo.other", "otherval"));

 cl_git_pass(git_futils_readbuffer(&newfile, file_name));
 cl_assert_equal_s("[section \"foo\"]\n\tname\n\tother = otherval\n[newsection]\n\tnewname = new_value\n", newfile.ptr);

 git_buf_dispose(&newfile);
 git_config_free(cfg);
}
