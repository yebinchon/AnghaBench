
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {int mutex; } ;
struct drbd_connection {int dummy; } ;


 void* __conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void *conn_prepare_command(struct drbd_connection *connection, struct drbd_socket *sock)
{
 void *p;

 mutex_lock(&sock->mutex);
 p = __conn_prepare_command(connection, sock);
 if (!p)
  mutex_unlock(&sock->mutex);

 return p;
}
