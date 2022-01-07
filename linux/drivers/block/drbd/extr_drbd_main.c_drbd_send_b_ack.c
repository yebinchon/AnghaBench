
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct p_barrier_ack {int set_size; int barrier; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {scalar_t__ cstate; struct drbd_socket meta; } ;


 scalar_t__ C_WF_REPORT_PARAMS ;
 int P_BARRIER_ACK ;
 struct p_barrier_ack* conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int conn_send_command (struct drbd_connection*,struct drbd_socket*,int ,int,int *,int ) ;
 int cpu_to_be32 (int ) ;

void drbd_send_b_ack(struct drbd_connection *connection, u32 barrier_nr, u32 set_size)
{
 struct drbd_socket *sock;
 struct p_barrier_ack *p;

 if (connection->cstate < C_WF_REPORT_PARAMS)
  return;

 sock = &connection->meta;
 p = conn_prepare_command(connection, sock);
 if (!p)
  return;
 p->barrier = barrier_nr;
 p->set_size = cpu_to_be32(set_size);
 conn_send_command(connection, sock, P_BARRIER_ACK, sizeof(*p), ((void*)0), 0);
}
