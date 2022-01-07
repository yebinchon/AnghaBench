
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {scalar_t__ status; scalar_t__ fd; } ;
struct TYPE_2__ {scalar_t__ packet_num; } ;


 TYPE_1__* RPCS_DATA (struct connection*) ;
 scalar_t__ conn_reading_query ;
 scalar_t__ conn_running ;
 scalar_t__ cr_ok ;
 int server_check_ready (struct connection*) ;

int rpc_conn_ready (struct connection *c) {
  server_check_ready (c);
  return c && (c->status == cr_ok || c->status == conn_running || c->status == conn_reading_query) && RPCS_DATA(c)->packet_num >= 0 && c->fd >= 0;
}
