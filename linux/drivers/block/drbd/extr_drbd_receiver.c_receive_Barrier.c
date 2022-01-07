
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_info {struct p_barrier* data; } ;
struct p_barrier {int barrier; } ;
struct drbd_epoch {int list; int epoch_size; int active; scalar_t__ flags; struct drbd_connection* connection; int barrier_nr; } ;
struct drbd_connection {int epoch_lock; int epochs; struct drbd_epoch* current_epoch; TYPE_1__* resource; } ;
struct TYPE_2__ {int write_ordering; } ;


 int EIO ;
 int EV_GOT_BARRIER_NR ;
 int FE_RECYCLED ;
 int GFP_NOIO ;



 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int conn_wait_active_ee_empty (struct drbd_connection*) ;
 int drbd_err (struct drbd_connection*,char*,int) ;
 int drbd_flush (struct drbd_connection*) ;
 int drbd_may_finish_epoch (struct drbd_connection*,struct drbd_epoch*,int ) ;
 int drbd_warn (struct drbd_connection*,char*) ;
 int kfree (struct drbd_epoch*) ;
 struct drbd_epoch* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int receive_Barrier(struct drbd_connection *connection, struct packet_info *pi)
{
 int rv;
 struct p_barrier *p = pi->data;
 struct drbd_epoch *epoch;




 connection->current_epoch->barrier_nr = p->barrier;
 connection->current_epoch->connection = connection;
 rv = drbd_may_finish_epoch(connection, connection->current_epoch, EV_GOT_BARRIER_NR);






 switch (connection->resource->write_ordering) {
 case 128:
  if (rv == FE_RECYCLED)
   return 0;



  epoch = kmalloc(sizeof(struct drbd_epoch), GFP_NOIO);
  if (epoch)
   break;
  else
   drbd_warn(connection, "Allocation of an epoch failed, slowing down\n");


 case 130:
 case 129:
  conn_wait_active_ee_empty(connection);
  drbd_flush(connection);

  if (atomic_read(&connection->current_epoch->epoch_size)) {
   epoch = kmalloc(sizeof(struct drbd_epoch), GFP_NOIO);
   if (epoch)
    break;
  }

  return 0;
 default:
  drbd_err(connection, "Strangeness in connection->write_ordering %d\n",
    connection->resource->write_ordering);
  return -EIO;
 }

 epoch->flags = 0;
 atomic_set(&epoch->epoch_size, 0);
 atomic_set(&epoch->active, 0);

 spin_lock(&connection->epoch_lock);
 if (atomic_read(&connection->current_epoch->epoch_size)) {
  list_add(&epoch->list, &connection->current_epoch->list);
  connection->current_epoch = epoch;
  connection->epochs++;
 } else {

  kfree(epoch);
 }
 spin_unlock(&connection->epoch_lock);

 return 0;
}
