
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ git_config_entry ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 char* git__strndup (char const*,size_t) ;
 int git_vector_insert (int *,char*) ;
 int strcmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int remote_list_cb(const git_config_entry *entry, void *payload)
{
 git_vector *list = payload;
 const char *name = entry->name + strlen("remote.");
 size_t namelen = strlen(name);
 char *remote_name;



 if (!strcmp(&name[namelen - 4], ".url"))
  remote_name = git__strndup(name, namelen - 4);
 else
  remote_name = git__strndup(name, namelen - 8);
 GIT_ERROR_CHECK_ALLOC(remote_name);

 return git_vector_insert(list, remote_name);
}
