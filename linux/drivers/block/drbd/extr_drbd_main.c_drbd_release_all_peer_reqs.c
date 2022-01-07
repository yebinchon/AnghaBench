
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int net_ee; int done_ee; int read_ee; int sync_ee; int active_ee; } ;


 int drbd_err (struct drbd_device*,char*,int) ;
 int drbd_free_peer_reqs (struct drbd_device*,int *) ;

__attribute__((used)) static void drbd_release_all_peer_reqs(struct drbd_device *device)
{
 int rr;

 rr = drbd_free_peer_reqs(device, &device->active_ee);
 if (rr)
  drbd_err(device, "%d EEs in active list found!\n", rr);

 rr = drbd_free_peer_reqs(device, &device->sync_ee);
 if (rr)
  drbd_err(device, "%d EEs in sync list found!\n", rr);

 rr = drbd_free_peer_reqs(device, &device->read_ee);
 if (rr)
  drbd_err(device, "%d EEs in read list found!\n", rr);

 rr = drbd_free_peer_reqs(device, &device->done_ee);
 if (rr)
  drbd_err(device, "%d EEs in done list found!\n", rr);

 rr = drbd_free_peer_reqs(device, &device->net_ee);
 if (rr)
  drbd_err(device, "%d EEs in net list found!\n", rr);
}
