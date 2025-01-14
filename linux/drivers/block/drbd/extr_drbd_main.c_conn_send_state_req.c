
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union drbd_state {int i; } ;
struct p_req_state {void* val; void* mask; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {int agreed_pro_version; struct drbd_socket data; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int EIO ;
 int P_CONN_ST_CHG_REQ ;
 int P_STATE_CHG_REQ ;
 struct p_req_state* conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int conn_send_command (struct drbd_connection*,struct drbd_socket*,int,int,int *,int ) ;
 void* cpu_to_be32 (int ) ;

int conn_send_state_req(struct drbd_connection *connection, union drbd_state mask, union drbd_state val)
{
 enum drbd_packet cmd;
 struct drbd_socket *sock;
 struct p_req_state *p;

 cmd = connection->agreed_pro_version < 100 ? P_STATE_CHG_REQ : P_CONN_ST_CHG_REQ;
 sock = &connection->data;
 p = conn_prepare_command(connection, sock);
 if (!p)
  return -EIO;
 p->mask = cpu_to_be32(mask.i);
 p->val = cpu_to_be32(val.i);
 return conn_send_command(connection, sock, cmd, sizeof(*p), ((void*)0), 0);
}
