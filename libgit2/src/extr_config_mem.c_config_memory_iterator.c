
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_config_iterator ;
typedef int git_config_entries ;
typedef int git_config_backend ;
struct TYPE_2__ {int entries; } ;
typedef TYPE_1__ config_memory_backend ;


 int git_config_entries_dup (int **,int ) ;
 int git_config_entries_free (int *) ;
 int git_config_entries_iterator_new (int **,int *) ;

__attribute__((used)) static int config_memory_iterator(
 git_config_iterator **iter,
 git_config_backend *backend)
{
 config_memory_backend *memory_backend = (config_memory_backend *) backend;
 git_config_entries *entries;
 int error;

 if ((error = git_config_entries_dup(&entries, memory_backend->entries)) < 0)
  goto out;

 if ((error = git_config_entries_iterator_new(iter, entries)) < 0)
  goto out;

out:

 git_config_entries_free(entries);
 return error;
}
