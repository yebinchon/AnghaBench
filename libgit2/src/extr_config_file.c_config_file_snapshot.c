
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_backend ;


 int git_config_backend_snapshot (int **,int *) ;

__attribute__((used)) static int config_file_snapshot(git_config_backend **out, git_config_backend *backend)
{
 return git_config_backend_snapshot(out, backend);
}
