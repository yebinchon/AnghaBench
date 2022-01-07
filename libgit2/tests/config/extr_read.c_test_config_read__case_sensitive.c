
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int buf ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_must_fail (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__case_sensitive(void)
{
 git_config *cfg;
 int i;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config1")));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "this.that.other"));
 cl_assert_equal_s("true", git_buf_cstr(&buf));
 git_buf_clear(&buf);

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "this.That.other"));
 cl_assert_equal_s("yes", git_buf_cstr(&buf));

 cl_git_pass(git_config_get_bool(&i, cfg, "this.that.other"));
 cl_assert(i == 1);
 cl_git_pass(git_config_get_bool(&i, cfg, "this.That.other"));
 cl_assert(i == 1);


 cl_must_fail(git_config_get_bool(&i, cfg, "this.thaT.other"));

 git_config_free(cfg);
}
