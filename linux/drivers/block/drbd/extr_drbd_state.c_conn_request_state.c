
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_connection {TYPE_1__* resource; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;
struct TYPE_2__ {int req_lock; } ;


 int _conn_request_state (struct drbd_connection*,union drbd_state,union drbd_state,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

enum drbd_state_rv
conn_request_state(struct drbd_connection *connection, union drbd_state mask, union drbd_state val,
     enum chg_state_flags flags)
{
 enum drbd_state_rv rv;

 spin_lock_irq(&connection->resource->req_lock);
 rv = _conn_request_state(connection, mask, val, flags);
 spin_unlock_irq(&connection->resource->req_lock);

 return rv;
}
