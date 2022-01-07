
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int debugfs_conn; int debugfs_conn_oldest_requests; int debugfs_conn_callback_history; } ;


 int drbd_debugfs_remove (int *) ;

void drbd_debugfs_connection_cleanup(struct drbd_connection *connection)
{
 drbd_debugfs_remove(&connection->debugfs_conn_callback_history);
 drbd_debugfs_remove(&connection->debugfs_conn_oldest_requests);
 drbd_debugfs_remove(&connection->debugfs_conn);
}
