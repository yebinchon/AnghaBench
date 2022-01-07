
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {scalar_t__* args; } ;
struct drbd_resource {int kref; } ;


 int drbd_destroy_resource ;
 int kref_put (int *,int ) ;

__attribute__((used)) static int put_resource_in_arg0(struct netlink_callback *cb, int holder_nr)
{
 if (cb->args[0]) {
  struct drbd_resource *resource =
   (struct drbd_resource *)cb->args[0];
  kref_put(&resource->kref, drbd_destroy_resource);
 }

 return 0;
}
