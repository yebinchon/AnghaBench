
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int cstate; } ;
struct connection_info {int conn_role; int conn_connection_state; } ;


 int conn_highest_peer (struct drbd_connection*) ;

__attribute__((used)) static void connection_to_info(struct connection_info *info,
          struct drbd_connection *connection)
{
 info->conn_connection_state = connection->cstate;
 info->conn_role = conn_highest_peer(connection);
}
