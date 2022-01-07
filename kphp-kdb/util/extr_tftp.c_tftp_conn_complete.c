
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int complete; scalar_t__* tid; } ;
typedef TYPE_1__ tftp_connection_t ;
struct TYPE_8__ {int prev; } ;


 size_t SERVER ;
 TYPE_5__ completed_connections ;
 int list_insert (int ,TYPE_1__*,TYPE_5__*) ;
 scalar_t__ port ;
 int tftp_conn_close_handles (TYPE_1__*) ;
 size_t working_mode ;

__attribute__((used)) static void tftp_conn_complete (tftp_connection_t *c) {
  if (c->complete) {
    return;
  }
  if (working_mode == SERVER && c->tid[working_mode] == port) {
    return;
  }
  c->complete = 1;
  tftp_conn_close_handles (c);
  list_insert (completed_connections.prev, c, &completed_connections);
}
