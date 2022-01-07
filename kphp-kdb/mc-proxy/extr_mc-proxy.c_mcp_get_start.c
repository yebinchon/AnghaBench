
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {scalar_t__ pending_queries; scalar_t__ generation; } ;
struct TYPE_2__ {scalar_t__ complete_count; scalar_t__ last_complete_count; } ;


 TYPE_1__* MCS_DATA (struct connection*) ;
 scalar_t__ conn_generation ;
 scalar_t__ get_keys ;
 scalar_t__ get_search_queries ;
 scalar_t__ get_targets ;

int mcp_get_start (struct connection *c) {
  get_targets = 0;
  get_search_queries = 0;
  get_keys = 0;
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  MCS_DATA(c)->last_complete_count = MCS_DATA(c)->complete_count;
  MCS_DATA(c)->complete_count = 0;
  return 0;
}
