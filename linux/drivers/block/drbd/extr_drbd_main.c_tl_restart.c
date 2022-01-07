
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_connection {TYPE_1__* resource; } ;
typedef enum drbd_req_event { ____Placeholder_drbd_req_event } drbd_req_event ;
struct TYPE_2__ {int req_lock; } ;


 int _tl_restart (struct drbd_connection*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void tl_restart(struct drbd_connection *connection, enum drbd_req_event what)
{
 spin_lock_irq(&connection->resource->req_lock);
 _tl_restart(connection, what);
 spin_unlock_irq(&connection->resource->req_lock);
}
