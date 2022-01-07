
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_ITEROVER ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_iterator_free (int *) ;
 int git_config_iterator_new (int **,int *) ;
 int git_config_new (int **) ;
 int git_config_next (TYPE_1__**,int *) ;

void test_config_read__iterator(void)
{
 const char *keys[] = {
  "core.dummy2",
  "core.verylong",
  "core.dummy",
  "remote.ab.url",
  "remote.abba.url",
  "core.dummy2",
  "core.global"
 };
 git_config *cfg;
 git_config_iterator *iter;
 git_config_entry *entry;
 int count, ret;

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config9"),
  GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config15"),
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));

 count = 0;
 cl_git_pass(git_config_iterator_new(&iter, cfg));

 while ((ret = git_config_next(&entry, iter)) == 0) {
  cl_assert_equal_s(entry->name, keys[count]);
  count++;
 }

 git_config_iterator_free(iter);
 cl_assert_equal_i(GIT_ITEROVER, ret);
 cl_assert_equal_i(7, count);

 count = 3;
 cl_git_pass(git_config_iterator_new(&iter, cfg));

 git_config_iterator_free(iter);
 git_config_free(cfg);
}
