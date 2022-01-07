
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_interval {scalar_t__ waiting; } ;
struct drbd_peer_request {struct drbd_interval i; } ;
struct drbd_device {int misc_wait; int write_requests; } ;


 int drbd_clear_interval (struct drbd_interval*) ;
 int drbd_remove_interval (int *,struct drbd_interval*) ;
 int wake_up (int *) ;

__attribute__((used)) static void drbd_remove_epoch_entry_interval(struct drbd_device *device,
          struct drbd_peer_request *peer_req)
{
 struct drbd_interval *i = &peer_req->i;

 drbd_remove_interval(&device->write_requests, i);
 drbd_clear_interval(i);


 if (i->waiting)
  wake_up(&device->misc_wait);
}
