
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_backend ;


 int GIT_UNUSED (int *) ;
 int config_error_readonly () ;

__attribute__((used)) static int config_snapshot_lock(git_config_backend *_cfg)
{
 GIT_UNUSED(_cfg);

 return config_error_readonly();
}
