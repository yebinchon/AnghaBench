
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int buf ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_must_fail (int ) ;
 int git_buf_cstr (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__subsection_header(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config3")));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "section.subsection.var"));
 cl_assert_equal_s("hello", git_buf_cstr(&buf));


 cl_must_fail(git_config_get_string_buf(&buf, cfg, "section.subSectIon.var"));

 git_config_free(cfg);
}
