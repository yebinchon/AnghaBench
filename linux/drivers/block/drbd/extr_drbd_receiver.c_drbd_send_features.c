
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_connection_features {void* feature_flags; void* protocol_max; void* protocol_min; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {struct drbd_socket data; } ;


 int EIO ;
 int PRO_FEATURES ;
 int PRO_VERSION_MAX ;
 int PRO_VERSION_MIN ;
 int P_CONNECTION_FEATURES ;
 struct p_connection_features* conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int conn_send_command (struct drbd_connection*,struct drbd_socket*,int ,int,int *,int ) ;
 void* cpu_to_be32 (int ) ;
 int memset (struct p_connection_features*,int ,int) ;

__attribute__((used)) static int drbd_send_features(struct drbd_connection *connection)
{
 struct drbd_socket *sock;
 struct p_connection_features *p;

 sock = &connection->data;
 p = conn_prepare_command(connection, sock);
 if (!p)
  return -EIO;
 memset(p, 0, sizeof(*p));
 p->protocol_min = cpu_to_be32(PRO_VERSION_MIN);
 p->protocol_max = cpu_to_be32(PRO_VERSION_MAX);
 p->feature_flags = cpu_to_be32(PRO_FEATURES);
 return conn_send_command(connection, sock, P_CONNECTION_FEATURES, sizeof(*p), ((void*)0), 0);
}
