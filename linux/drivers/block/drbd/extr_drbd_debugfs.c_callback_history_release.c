
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drbd_connection* i_private; } ;
struct file {int dummy; } ;
struct drbd_connection {int kref; } ;


 int drbd_destroy_connection ;
 int kref_put (int *,int ) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int callback_history_release(struct inode *inode, struct file *file)
{
 struct drbd_connection *connection = inode->i_private;
 kref_put(&connection->kref, drbd_destroy_connection);
 return single_release(inode, file);
}
