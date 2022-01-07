
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_connection {struct dentry* debugfs_conn_oldest_requests; struct dentry* debugfs_conn; struct dentry* debugfs_conn_callback_history; TYPE_1__* resource; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* debugfs_res_connections; } ;


 int connection_callback_history_fops ;
 int connection_oldest_requests_fops ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct drbd_connection*,int *) ;

void drbd_debugfs_connection_add(struct drbd_connection *connection)
{
 struct dentry *conns_dir = connection->resource->debugfs_res_connections;
 struct dentry *dentry;




 dentry = debugfs_create_dir("peer", conns_dir);
 connection->debugfs_conn = dentry;

 dentry = debugfs_create_file("callback_history", 0440,
         connection->debugfs_conn, connection,
         &connection_callback_history_fops);
 connection->debugfs_conn_callback_history = dentry;

 dentry = debugfs_create_file("oldest_requests", 0440,
         connection->debugfs_conn, connection,
         &connection_oldest_requests_fops);
 connection->debugfs_conn_oldest_requests = dentry;
}
