
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int git_config_backend ;
typedef int git_config ;


 int foreach_cb ;
 int git_config_add_backend (int *,int *,int ,int *,int ) ;
 int git_config_backend_free (int *) ;
 int git_config_backend_from_string (int **,char const*,size_t) ;
 int git_config_foreach (int *,int ,int *) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
 git_config *cfg = ((void*)0);
 git_config_backend *backend = ((void*)0);
 int err = 0;

 if ((err = git_config_new(&cfg)) != 0) {
  goto out;
 }

 if ((err = git_config_backend_from_string(&backend, (const char*)data, size)) != 0) {
  goto out;
 }
 if ((err = git_config_add_backend(cfg, backend, 0, ((void*)0), 0)) != 0) {
  goto out;
 }

 backend = ((void*)0);

 git_config_foreach(cfg, foreach_cb, ((void*)0));
 out:
 git_config_backend_free(backend);
 git_config_free(cfg);

 return 0;
}
