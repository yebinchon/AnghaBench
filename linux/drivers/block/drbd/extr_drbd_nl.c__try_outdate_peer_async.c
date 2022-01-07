
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int kref; } ;


 int conn_try_outdate_peer (struct drbd_connection*) ;
 int drbd_destroy_connection ;
 int kref_put (int *,int ) ;

__attribute__((used)) static int _try_outdate_peer_async(void *data)
{
 struct drbd_connection *connection = (struct drbd_connection *)data;

 conn_try_outdate_peer(connection);

 kref_put(&connection->kref, drbd_destroy_connection);
 return 0;
}
