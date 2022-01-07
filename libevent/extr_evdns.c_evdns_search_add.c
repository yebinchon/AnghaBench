
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int evdns_base_search_add (int ,char const*) ;

void
evdns_search_add(const char *domain) {
 evdns_base_search_add(current_base, domain);
}
