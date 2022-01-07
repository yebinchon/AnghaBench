
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int git_config ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_must_fail (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_get_int64 (scalar_t__*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_int32 (int *,char*,int) ;
 int git_config_set_int64 (int *,char*,int) ;

void test_config_write__replace_value(void)
{
 git_config *cfg;
 int i;
 int64_t l, expected = +9223372036854775803;


 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_set_int32(cfg, "core.dummy", 5));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_get_int32(&i, cfg, "core.dummy"));
 cl_assert(i == 5);
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_set_int32(cfg, "core.dummy", 1));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_set_int64(cfg, "core.verylong", expected));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_get_int64(&l, cfg, "core.verylong"));
 cl_assert(l == expected);
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_must_fail(git_config_get_int32(&i, cfg, "core.verylong"));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_set_int64(cfg, "core.verylong", 1));
 git_config_free(cfg);
}
