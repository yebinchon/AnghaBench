
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int evdns_base_search_ndots_set (int ,int const) ;

void
evdns_search_ndots_set(const int ndots) {
 evdns_base_search_ndots_set(current_base, ndots);
}
