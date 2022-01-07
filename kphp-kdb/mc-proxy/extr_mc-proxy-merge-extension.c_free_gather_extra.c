
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_functions {int (* free_gather_extra ) (void*) ;} ;


 struct mc_proxy_merge_functions* get_extension_functions () ;
 int stub1 (void*) ;

int free_gather_extra (void *E) {
  struct mc_proxy_merge_functions *func = get_extension_functions ();
  return func->free_gather_extra (E);
}
