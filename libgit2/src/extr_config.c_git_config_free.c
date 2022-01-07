
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int config_free ;

void git_config_free(git_config *cfg)
{
 if (cfg == ((void*)0))
  return;

 GIT_REFCOUNT_DEC(cfg, config_free);
}
