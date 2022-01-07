
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drbd_resource* i_private; } ;
struct file {int dummy; } ;
struct drbd_resource {int kref; } ;


 int drbd_destroy_resource ;
 int kref_put (int *,int ) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int in_flight_summary_release(struct inode *inode, struct file *file)
{
 struct drbd_resource *resource = inode->i_private;
 kref_put(&resource->kref, drbd_destroy_resource);
 return single_release(inode, file);
}
