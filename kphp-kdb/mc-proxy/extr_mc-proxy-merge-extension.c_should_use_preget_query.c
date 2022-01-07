
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_functions {int (* use_preget_query ) (void*) ;} ;


 struct mc_proxy_merge_functions* get_extension_functions () ;
 int stub1 (void*) ;

int should_use_preget_query (void *extra) {
  struct mc_proxy_merge_functions *func = get_extension_functions ();
  return func->use_preget_query (extra);
}
