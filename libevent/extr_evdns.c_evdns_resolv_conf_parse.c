
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_base ;
 scalar_t__ evdns_base_new (int *,int ) ;
 int evdns_base_resolv_conf_parse (scalar_t__,int,char const* const) ;

int
evdns_resolv_conf_parse(int flags, const char *const filename) {
 if (!current_base)
  current_base = evdns_base_new(((void*)0), 0);
 return evdns_base_resolv_conf_parse(current_base, flags, filename);
}
