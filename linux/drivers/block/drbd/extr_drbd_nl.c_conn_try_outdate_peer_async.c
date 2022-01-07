
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct drbd_connection {int kref; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int _try_outdate_peer_async ;
 int current ;
 int drbd_destroy_connection ;
 int drbd_err (struct drbd_connection*,char*) ;
 int flush_signals (int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 struct task_struct* kthread_run (int ,struct drbd_connection*,char*) ;

void conn_try_outdate_peer_async(struct drbd_connection *connection)
{
 struct task_struct *opa;

 kref_get(&connection->kref);





 flush_signals(current);
 opa = kthread_run(_try_outdate_peer_async, connection, "drbd_async_h");
 if (IS_ERR(opa)) {
  drbd_err(connection, "out of mem, failed to invoke fence-peer helper\n");
  kref_put(&connection->kref, drbd_destroy_connection);
 }
}
