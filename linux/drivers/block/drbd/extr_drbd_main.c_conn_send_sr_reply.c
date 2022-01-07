
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_req_state_reply {int retcode; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {int agreed_pro_version; struct drbd_socket meta; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int P_CONN_ST_CHG_REPLY ;
 int P_STATE_CHG_REPLY ;
 struct p_req_state_reply* conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int conn_send_command (struct drbd_connection*,struct drbd_socket*,int,int,int *,int ) ;
 int cpu_to_be32 (int) ;

void conn_send_sr_reply(struct drbd_connection *connection, enum drbd_state_rv retcode)
{
 struct drbd_socket *sock;
 struct p_req_state_reply *p;
 enum drbd_packet cmd = connection->agreed_pro_version < 100 ? P_STATE_CHG_REPLY : P_CONN_ST_CHG_REPLY;

 sock = &connection->meta;
 p = conn_prepare_command(connection, sock);
 if (p) {
  p->retcode = cpu_to_be32(retcode);
  conn_send_command(connection, sock, cmd, sizeof(*p), ((void*)0), 0);
 }
}
