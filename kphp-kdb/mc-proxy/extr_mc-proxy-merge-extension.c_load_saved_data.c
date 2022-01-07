
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_functions {void (* load_saved_data ) (struct connection*) ;} ;
struct connection {int dummy; } ;


 struct mc_proxy_merge_functions* get_extension_functions () ;
 void stub1 (struct connection*) ;

void load_saved_data (struct connection *c) {
  struct mc_proxy_merge_functions *func = get_extension_functions ();
  return func->load_saved_data (c);
}
