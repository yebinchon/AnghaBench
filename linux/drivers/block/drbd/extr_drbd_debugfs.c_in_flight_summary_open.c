
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drbd_resource* i_private; } ;
struct file {int dummy; } ;
struct drbd_resource {int kref; } ;


 int drbd_destroy_resource ;
 int drbd_single_open (struct file*,int ,struct drbd_resource*,int *,int ) ;
 int in_flight_summary_show ;

__attribute__((used)) static int in_flight_summary_open(struct inode *inode, struct file *file)
{
 struct drbd_resource *resource = inode->i_private;
 return drbd_single_open(file, in_flight_summary_show, resource,
    &resource->kref, drbd_destroy_resource);
}
