
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_functions {int (* check_query ) (int,char const*,int) ;} ;


 int fprintf (int ,char*) ;
 struct mc_proxy_merge_functions* get_extension_functions () ;
 int stderr ;
 int stub1 (int,char const*,int) ;
 scalar_t__ verbosity ;

int check_query (int type, const char *key, int key_len) {
  if (verbosity) {
    fprintf (stderr, "check_query\n");
  }
  struct mc_proxy_merge_functions *func = get_extension_functions ();
  return func->check_query (type, key, key_len);
}
