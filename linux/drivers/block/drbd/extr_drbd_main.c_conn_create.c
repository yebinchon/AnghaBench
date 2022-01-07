
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct res_opts {int dummy; } ;
struct drbd_resource {int resources; int connections; int kref; } ;
struct drbd_epoch {int dummy; } ;
struct TYPE_7__ {int mutex; } ;
struct TYPE_6__ {struct drbd_connection* connection; } ;
struct TYPE_5__ {int seen_any_write_yet; scalar_t__ current_epoch_writes; scalar_t__ current_epoch_nr; } ;
struct drbd_connection {int epochs; TYPE_3__ data; TYPE_3__ meta; struct drbd_connection* current_epoch; int connections; struct drbd_resource* resource; int kref; TYPE_2__ ack_receiver; TYPE_2__ worker; TYPE_2__ receiver; int sender_work; int peer_devices; int ping_wait; int cstate_mutex; int cstate; TYPE_1__ send; int epoch_lock; int list; int transfer_log; } ;


 int C_STANDALONE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int drbd_ack_receiver ;
 scalar_t__ drbd_alloc_socket (TYPE_3__*) ;
 struct drbd_resource* drbd_create_resource (char const*) ;
 int drbd_debugfs_connection_add (struct drbd_connection*) ;
 int drbd_free_resource (struct drbd_resource*) ;
 int drbd_free_socket (TYPE_3__*) ;
 int drbd_init_workqueue (int *) ;
 int drbd_receiver ;
 int drbd_thread_init (struct drbd_resource*,TYPE_2__*,int ,char*) ;
 int drbd_worker ;
 int idr_init (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct drbd_connection*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 void* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_del (int *) ;
 int mutex_init (int *) ;
 scalar_t__ set_resource_options (struct drbd_resource*,struct res_opts*) ;
 int spin_lock_init (int *) ;

struct drbd_connection *conn_create(const char *name, struct res_opts *res_opts)
{
 struct drbd_resource *resource;
 struct drbd_connection *connection;

 connection = kzalloc(sizeof(struct drbd_connection), GFP_KERNEL);
 if (!connection)
  return ((void*)0);

 if (drbd_alloc_socket(&connection->data))
  goto fail;
 if (drbd_alloc_socket(&connection->meta))
  goto fail;

 connection->current_epoch = kzalloc(sizeof(struct drbd_epoch), GFP_KERNEL);
 if (!connection->current_epoch)
  goto fail;

 INIT_LIST_HEAD(&connection->transfer_log);

 INIT_LIST_HEAD(&connection->current_epoch->list);
 connection->epochs = 1;
 spin_lock_init(&connection->epoch_lock);

 connection->send.seen_any_write_yet = 0;
 connection->send.current_epoch_nr = 0;
 connection->send.current_epoch_writes = 0;

 resource = drbd_create_resource(name);
 if (!resource)
  goto fail;

 connection->cstate = C_STANDALONE;
 mutex_init(&connection->cstate_mutex);
 init_waitqueue_head(&connection->ping_wait);
 idr_init(&connection->peer_devices);

 drbd_init_workqueue(&connection->sender_work);
 mutex_init(&connection->data.mutex);
 mutex_init(&connection->meta.mutex);

 drbd_thread_init(resource, &connection->receiver, drbd_receiver, "receiver");
 connection->receiver.connection = connection;
 drbd_thread_init(resource, &connection->worker, drbd_worker, "worker");
 connection->worker.connection = connection;
 drbd_thread_init(resource, &connection->ack_receiver, drbd_ack_receiver, "ack_recv");
 connection->ack_receiver.connection = connection;

 kref_init(&connection->kref);

 connection->resource = resource;

 if (set_resource_options(resource, res_opts))
  goto fail_resource;

 kref_get(&resource->kref);
 list_add_tail_rcu(&connection->connections, &resource->connections);
 drbd_debugfs_connection_add(connection);
 return connection;

fail_resource:
 list_del(&resource->resources);
 drbd_free_resource(resource);
fail:
 kfree(connection->current_epoch);
 drbd_free_socket(&connection->meta);
 drbd_free_socket(&connection->data);
 kfree(connection);
 return ((void*)0);
}
