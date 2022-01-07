
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnr_buf ;
struct drbd_peer_device {struct dentry* debugfs_peer_dev; TYPE_2__* device; TYPE_1__* connection; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int vnr; } ;
struct TYPE_3__ {struct dentry* debugfs_conn; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int snprintf (char*,int,char*,int) ;

void drbd_debugfs_peer_device_add(struct drbd_peer_device *peer_device)
{
 struct dentry *conn_dir = peer_device->connection->debugfs_conn;
 struct dentry *dentry;
 char vnr_buf[8];

 snprintf(vnr_buf, sizeof(vnr_buf), "%u", peer_device->device->vnr);
 dentry = debugfs_create_dir(vnr_buf, conn_dir);
 peer_device->debugfs_peer_dev = dentry;
}
