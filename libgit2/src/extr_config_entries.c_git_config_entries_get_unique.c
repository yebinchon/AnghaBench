
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ include_depth; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config_entries ;
struct TYPE_6__ {TYPE_1__* entry; int * next; } ;
typedef TYPE_2__ config_entry_list ;


 int GIT_ERROR_CONFIG ;
 int config_entry_get (TYPE_2__**,int *,char const*) ;
 int git_error_set (int ,char*) ;

int git_config_entries_get_unique(git_config_entry **out, git_config_entries *entries, const char *key)
{
 config_entry_list *entry;
 int error;

 if ((error = config_entry_get(&entry, entries, key)) < 0)
  return error;

 if (entry->next != ((void*)0)) {
  git_error_set(GIT_ERROR_CONFIG, "entry is not unique due to being a multivar");
  return -1;
 }

 if (entry->entry->include_depth) {
  git_error_set(GIT_ERROR_CONFIG, "entry is not unique due to being included");
  return -1;
 }

 *out = entry->entry;

 return 0;
}
