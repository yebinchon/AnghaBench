
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_config_backend ;
struct TYPE_3__ {int cfg; int entries; } ;
typedef TYPE_1__ config_memory_backend ;


 int git__free (TYPE_1__*) ;
 int git_buf_dispose (int *) ;
 int git_config_entries_free (int ) ;

__attribute__((used)) static void config_memory_free(git_config_backend *_backend)
{
 config_memory_backend *backend = (config_memory_backend *)_backend;

 if (backend == ((void*)0))
  return;

 git_config_entries_free(backend->entries);
 git_buf_dispose(&backend->cfg);
 git__free(backend);
}
