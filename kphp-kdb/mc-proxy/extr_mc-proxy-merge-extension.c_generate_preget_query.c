
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_functions {int (* generate_preget_query ) (char*,char const*,int,void*,int) ;} ;


 struct mc_proxy_merge_functions* get_extension_functions () ;
 int stub1 (char*,char const*,int,void*,int) ;

int generate_preget_query (char *buff, const char *key, int key_len, void *E, int n) {
  struct mc_proxy_merge_functions *func = get_extension_functions ();
  return func->generate_preget_query (buff, key, key_len, E, n);
}
