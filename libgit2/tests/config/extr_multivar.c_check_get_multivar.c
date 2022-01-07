
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_iterator ;
typedef int git_config_entry ;
typedef int git_config ;


 int _name ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_iterator_free (int *) ;
 int git_config_multivar_iterator_new (int **,int *,int ,int *) ;
 scalar_t__ git_config_next (int **,int *) ;

__attribute__((used)) static void check_get_multivar(git_config *cfg, int expected)
{
 git_config_iterator *iter;
 git_config_entry *entry;
 int n = 0;

 cl_git_pass(git_config_multivar_iterator_new(&iter, cfg, _name, ((void*)0)));

 while (git_config_next(&entry, iter) == 0)
  n++;

 cl_assert_equal_i(expected, n);
 git_config_iterator_free(iter);

}
