
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_level_t ;
typedef int git_config ;
typedef int backend_internal ;


 int find_backend_by_level (int **,int const*,int ) ;
 int git_config__add_internal (int *,int *,int ,int) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;

int git_config_open_level(
 git_config **cfg_out,
 const git_config *cfg_parent,
 git_config_level_t level)
{
 git_config *cfg;
 backend_internal *internal;
 int res;

 if ((res = find_backend_by_level(&internal, cfg_parent, level)) < 0)
  return res;

 if ((res = git_config_new(&cfg)) < 0)
  return res;

 if ((res = git_config__add_internal(cfg, internal, level, 1)) < 0) {
  git_config_free(cfg);
  return res;
 }

 *cfg_out = cfg;

 return 0;
}
