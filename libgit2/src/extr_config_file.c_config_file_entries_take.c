
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_config_entries ;
struct TYPE_3__ {int values_mutex; int * entries; } ;
typedef TYPE_1__ config_file_backend ;


 int GIT_ERROR_OS ;
 int git_config_entries_incref (int *) ;
 int git_error_set (int ,char*) ;
 int git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;

__attribute__((used)) static int config_file_entries_take(git_config_entries **out, config_file_backend *b)
{
 int error;

 if ((error = git_mutex_lock(&b->values_mutex)) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock config backend");
  return error;
 }

 git_config_entries_incref(b->entries);
 *out = b->entries;

 git_mutex_unlock(&b->values_mutex);

 return 0;
}
