
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_functions {int (* generate_new_key ) (char*,char*,int,void*) ;} ;


 struct mc_proxy_merge_functions* get_extension_functions () ;
 int stub1 (char*,char*,int,void*) ;

int generate_new_key (char *buff, char *key, int len, void *E) {
  struct mc_proxy_merge_functions *func = get_extension_functions ();
  return func->generate_new_key (buff, key, len, E);
}
