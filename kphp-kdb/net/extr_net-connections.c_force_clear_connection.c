
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {scalar_t__ status; int flags; TYPE_2__* ev; TYPE_1__* type; int fd; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int (* close ) (struct connection*,int ) ;} ;


 int C_SPECIAL ;
 int active_connections ;
 int clear_connection_timeout (struct connection*) ;
 int close_special_connection (struct connection*) ;
 scalar_t__ conn_connecting ;
 int memset (struct connection*,int ,int) ;
 int stub1 (struct connection*,int ) ;
 int total_connect_failures ;
 int vkprintf (int,char*,int ) ;

int force_clear_connection (struct connection *c) {
  vkprintf (1, "socket %d: forced closing\n", c->fd);
  if (c->status != conn_connecting) {
    active_connections--;
    if (c->flags & C_SPECIAL) {
      close_special_connection (c);
    }
  } else {
    total_connect_failures++;
  }
  c->type->close (c, 0);
  clear_connection_timeout (c);

  if (c->ev) {
    c->ev->data = 0;
  }
  memset (c, 0, sizeof(struct connection));

  return 1;
}
