
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drbd_connection* i_private; } ;
struct file {int dummy; } ;
struct drbd_connection {int kref; } ;


 int callback_history_show ;
 int drbd_destroy_connection ;
 int drbd_single_open (struct file*,int ,struct drbd_connection*,int *,int ) ;

__attribute__((used)) static int callback_history_open(struct inode *inode, struct file *file)
{
 struct drbd_connection *connection = inode->i_private;
 return drbd_single_open(file, callback_history_show, connection,
    &connection->kref, drbd_destroy_connection);
}
