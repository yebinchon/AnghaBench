
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_socket {int mutex; scalar_t__ socket; } ;
struct drbd_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {struct drbd_socket data; } ;


 int _drbd_send_bitmap (struct drbd_device*) ;
 TYPE_2__* first_peer_device (struct drbd_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drbd_send_bitmap(struct drbd_device *device)
{
 struct drbd_socket *sock = &first_peer_device(device)->connection->data;
 int err = -1;

 mutex_lock(&sock->mutex);
 if (sock->socket)
  err = !_drbd_send_bitmap(device);
 mutex_unlock(&sock->mutex);
 return err;
}
