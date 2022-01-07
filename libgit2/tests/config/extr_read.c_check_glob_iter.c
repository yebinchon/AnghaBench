
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_iterator ;
typedef int git_config_entry ;
typedef int git_config ;


 int GIT_ITEROVER ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_iterator_free (int *) ;
 int git_config_iterator_glob_new (int **,int *,char const*) ;
 int git_config_next (int **,int *) ;

__attribute__((used)) static void check_glob_iter(git_config *cfg, const char *regexp, int expected)
{
 git_config_iterator *iter;
 git_config_entry *entry;
 int count, error;

 cl_git_pass(git_config_iterator_glob_new(&iter, cfg, regexp));

 count = 0;
 while ((error = git_config_next(&entry, iter)) == 0)
  count++;

 cl_assert_equal_i(GIT_ITEROVER, error);
 cl_assert_equal_i(expected, count);
 git_config_iterator_free(iter);
}
