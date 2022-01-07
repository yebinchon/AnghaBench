
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct drbd_interval {scalar_t__ waiting; } ;
struct drbd_request {struct drbd_interval i; struct drbd_device* device; } ;
struct drbd_device {int misc_wait; } ;


 int drbd_remove_interval (struct rb_root*,struct drbd_interval*) ;
 int wake_up (int *) ;

__attribute__((used)) static void drbd_remove_request_interval(struct rb_root *root,
      struct drbd_request *req)
{
 struct drbd_device *device = req->device;
 struct drbd_interval *i = &req->i;

 drbd_remove_interval(root, i);


 if (i->waiting)
  wake_up(&device->misc_wait);
}
