
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {scalar_t__ basic_type; size_t listening; scalar_t__ listening_generation; } ;
struct TYPE_2__ {scalar_t__ basic_type; scalar_t__ generation; } ;


 TYPE_1__* Connections ;
 int EVT_LEVEL ;
 int EVT_RWX ;
 scalar_t__ active_special_connections ;
 scalar_t__ ct_listen ;
 int epoll_insert (size_t,int) ;
 scalar_t__ max_special_connections ;

void close_special_connection (struct connection *c) {
  if (c->basic_type != ct_listen) {
    if (--active_special_connections < max_special_connections && Connections[c->listening].basic_type == ct_listen && Connections[c->listening].generation == c->listening_generation) {
      epoll_insert (c->listening, EVT_RWX | EVT_LEVEL);
    }
  }
}
