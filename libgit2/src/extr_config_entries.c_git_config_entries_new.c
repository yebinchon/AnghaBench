
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int map; } ;
typedef TYPE_1__ git_config_entries ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git_strmap_new (int *) ;

int git_config_entries_new(git_config_entries **out)
{
 git_config_entries *entries;
 int error;

 entries = git__calloc(1, sizeof(git_config_entries));
 GIT_ERROR_CHECK_ALLOC(entries);
 GIT_REFCOUNT_INC(entries);

 if ((error = git_strmap_new(&entries->map)) < 0)
  git__free(entries);
 else
  *out = entries;

 return error;
}
