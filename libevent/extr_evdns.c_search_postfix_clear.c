
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int global_search_state; } ;


 int search_state_decref (int ) ;
 int search_state_new () ;

__attribute__((used)) static void
search_postfix_clear(struct evdns_base *base) {
 search_state_decref(base->global_search_state);

 base->global_search_state = search_state_new();
}
