
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_config_snapshot (int **,int *) ;

void test_config_write__add_value_which_needs_quotes(void)
{
 git_config *cfg, *base;
 const char* str1;
 const char* str2;
 const char* str3;
 const char* str4;
 const char* str5;

 cl_git_pass(git_config_open_ondisk(&cfg, "config17"));
 cl_git_pass(git_config_set_string(cfg, "core.startwithspace", " Something"));
 cl_git_pass(git_config_set_string(cfg, "core.endwithspace", "Something "));
 cl_git_pass(git_config_set_string(cfg, "core.containscommentchar1", "some#thing"));
 cl_git_pass(git_config_set_string(cfg, "core.containscommentchar2", "some;thing"));
 cl_git_pass(git_config_set_string(cfg, "core.startwhithsapceandcontainsdoublequote", " some\"thing"));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&base, "config17"));
 cl_git_pass(git_config_snapshot(&cfg, base));
 cl_git_pass(git_config_get_string(&str1, cfg, "core.startwithspace"));
 cl_assert_equal_s(" Something", str1);
 cl_git_pass(git_config_get_string(&str2, cfg, "core.endwithspace"));
 cl_assert_equal_s("Something ", str2);
 cl_git_pass(git_config_get_string(&str3, cfg, "core.containscommentchar1"));
 cl_assert_equal_s("some#thing", str3);
 cl_git_pass(git_config_get_string(&str4, cfg, "core.containscommentchar2"));
 cl_assert_equal_s("some;thing", str4);
 cl_git_pass(git_config_get_string(&str5, cfg, "core.startwhithsapceandcontainsdoublequote"));
 cl_assert_equal_s(" some\"thing", str5);
 git_config_free(cfg);
 git_config_free(base);
}
