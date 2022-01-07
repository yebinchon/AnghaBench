
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_iterator ;
typedef int (* git_config_foreach_cb ) (int *,void*) ;
typedef int git_config_entry ;
typedef int git_config ;


 int GIT_ITEROVER ;
 int git_config_iterator_free (int *) ;
 int git_config_iterator_glob_new (int **,int const*,char const*) ;
 int git_config_next (int **,int *) ;
 int git_error_set_after_callback (int) ;

int git_config_foreach_match(
 const git_config *cfg,
 const char *regexp,
 git_config_foreach_cb cb,
 void *payload)
{
 int error;
 git_config_iterator *iter;
 git_config_entry *entry;

 if ((error = git_config_iterator_glob_new(&iter, cfg, regexp)) < 0)
  return error;

 while (!(error = git_config_next(&entry, iter))) {
  if ((error = cb(entry, payload)) != 0) {
   git_error_set_after_callback(error);
   break;
  }
 }

 git_config_iterator_free(iter);

 if (error == GIT_ITEROVER)
  error = 0;

 return error;
}
