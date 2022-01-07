
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_config_entry ;
typedef int git_config_backend ;
struct TYPE_2__ {int entries; } ;
typedef TYPE_1__ config_memory_backend ;


 int git_config_entries_get (int **,int ,char const*) ;

__attribute__((used)) static int config_memory_get(git_config_backend *backend, const char *key, git_config_entry **out)
{
 config_memory_backend *memory_backend = (config_memory_backend *) backend;
 return git_config_entries_get(out, memory_backend->entries, key);
}
