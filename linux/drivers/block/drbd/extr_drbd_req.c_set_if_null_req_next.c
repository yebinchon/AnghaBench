
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_request {int dummy; } ;
struct drbd_peer_device {struct drbd_connection* connection; } ;
struct drbd_connection {struct drbd_request* req_next; } ;



__attribute__((used)) static void set_if_null_req_next(struct drbd_peer_device *peer_device, struct drbd_request *req)
{
 struct drbd_connection *connection = peer_device ? peer_device->connection : ((void*)0);
 if (!connection)
  return;
 if (connection->req_next == ((void*)0))
  connection->req_next = req;
}
