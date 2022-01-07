
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_proxy_merge_conf {int use_preget_query; } ;


 struct mc_proxy_merge_conf* get_extension_conf () ;

int use_preget_query () {
  struct mc_proxy_merge_conf *conf = get_extension_conf ();
  return conf->use_preget_query;
}
