
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct drbd_connection {TYPE_1__ data; } ;


 int P_PROTOCOL ;
 int __drbd_send_protocol (struct drbd_connection*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drbd_send_protocol(struct drbd_connection *connection)
{
 int err;

 mutex_lock(&connection->data.mutex);
 err = __drbd_send_protocol(connection, P_PROTOCOL);
 mutex_unlock(&connection->data.mutex);

 return err;
}
