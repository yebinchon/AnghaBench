
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_PROGRAMDATA ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config__global_location (TYPE_1__*) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int ) ;
 int git_config_find_global (TYPE_1__*) ;
 int git_config_find_programdata (TYPE_1__*) ;
 int git_config_find_system (TYPE_1__*) ;
 int git_config_find_xdg (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;

int git_config_open_default(git_config **out)
{
 int error;
 git_config *cfg = ((void*)0);
 git_buf buf = GIT_BUF_INIT;

 if ((error = git_config_new(&cfg)) < 0)
  return error;

 if (!git_config_find_global(&buf) || !git_config__global_location(&buf)) {
  error = git_config_add_file_ondisk(cfg, buf.ptr,
   GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0);
 }

 if (!error && !git_config_find_xdg(&buf))
  error = git_config_add_file_ondisk(cfg, buf.ptr,
   GIT_CONFIG_LEVEL_XDG, ((void*)0), 0);

 if (!error && !git_config_find_system(&buf))
  error = git_config_add_file_ondisk(cfg, buf.ptr,
   GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 0);

 if (!error && !git_config_find_programdata(&buf))
  error = git_config_add_file_ondisk(cfg, buf.ptr,
   GIT_CONFIG_LEVEL_PROGRAMDATA, ((void*)0), 0);

 git_buf_dispose(&buf);

 if (error) {
  git_config_free(cfg);
  cfg = ((void*)0);
 }

 *out = cfg;

 return error;
}
