
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int clean_test_config ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (TYPE_1__*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_read__single_line(void)
{
 git_buf buf = GIT_BUF_INIT;
 git_config *cfg;

 cl_set_cleanup(&clean_test_config, ((void*)0));
 cl_git_mkfile("./testconfig", "[some] var = value\n[some \"OtheR\"] var = value");
 cl_git_pass(git_config_open_ondisk(&cfg, "./testconfig"));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "some.var"));
 cl_assert_equal_s(buf.ptr, "value");

 git_buf_clear(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "some.OtheR.var"));
 cl_assert_equal_s(buf.ptr, "value");

 git_config_free(cfg);
 cl_git_mkfile("./testconfig", "[some] var = value\n[some \"OtheR\"]var = value");
 cl_git_pass(git_config_open_ondisk(&cfg, "./testconfig"));
 git_buf_clear(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "some.var"));
 cl_assert_equal_s(buf.ptr, "value");

 git_buf_clear(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "some.OtheR.var"));
 cl_assert_equal_s(buf.ptr, "value");

 git_config_free(cfg);
 git_buf_dispose(&buf);
}
