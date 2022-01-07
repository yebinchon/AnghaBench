
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* next ) (int **,TYPE_1__*) ;int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_config_iterator ;
typedef int (* git_config_foreach_cb ) (int *,void*) ;
typedef int git_config_entry ;
typedef int git_config ;


 int GIT_ITEROVER ;
 int config_error_notfound (char const*) ;
 int git_config_multivar_iterator_new (TYPE_1__**,int const*,char const*,char const*) ;
 int git_error_set_after_callback (int) ;
 int stub1 (int **,TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

int git_config_get_multivar_foreach(
 const git_config *cfg, const char *name, const char *regexp,
 git_config_foreach_cb cb, void *payload)
{
 int err, found;
 git_config_iterator *iter;
 git_config_entry *entry;

 if ((err = git_config_multivar_iterator_new(&iter, cfg, name, regexp)) < 0)
  return err;

 found = 0;
 while ((err = iter->next(&entry, iter)) == 0) {
  found = 1;

  if ((err = cb(entry, payload)) != 0) {
   git_error_set_after_callback(err);
   break;
  }
 }

 iter->free(iter);
 if (err == GIT_ITEROVER)
  err = 0;

 if (found == 0 && err == 0)
  err = config_error_notfound(name);

 return err;
}
