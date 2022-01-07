
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct net_conf {int max_buffers; } ;
struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct drbd_device {int pp_in_use; int pp_in_use_by_net; } ;
struct TYPE_2__ {int net_conf; } ;


 int DEFINE_WAIT (int ) ;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 unsigned int UINT_MAX ;
 struct page* __drbd_alloc_pages (struct drbd_device*,unsigned int) ;
 int atomic_add (unsigned int,int *) ;
 unsigned int atomic_read (int *) ;
 int current ;
 int drbd_pp_wait ;
 int drbd_reclaim_net_peer_reqs (struct drbd_device*) ;
 int drbd_warn (struct drbd_device*,char*) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ schedule_timeout (int) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

struct page *drbd_alloc_pages(struct drbd_peer_device *peer_device, unsigned int number,
         bool retry)
{
 struct drbd_device *device = peer_device->device;
 struct page *page = ((void*)0);
 struct net_conf *nc;
 DEFINE_WAIT(wait);
 unsigned int mxb;

 rcu_read_lock();
 nc = rcu_dereference(peer_device->connection->net_conf);
 mxb = nc ? nc->max_buffers : 1000000;
 rcu_read_unlock();

 if (atomic_read(&device->pp_in_use) < mxb)
  page = __drbd_alloc_pages(device, number);



 if (page && atomic_read(&device->pp_in_use_by_net) > 512)
  drbd_reclaim_net_peer_reqs(device);

 while (page == ((void*)0)) {
  prepare_to_wait(&drbd_pp_wait, &wait, TASK_INTERRUPTIBLE);

  drbd_reclaim_net_peer_reqs(device);

  if (atomic_read(&device->pp_in_use) < mxb) {
   page = __drbd_alloc_pages(device, number);
   if (page)
    break;
  }

  if (!retry)
   break;

  if (signal_pending(current)) {
   drbd_warn(device, "drbd_alloc_pages interrupted!\n");
   break;
  }

  if (schedule_timeout(HZ/10) == 0)
   mxb = UINT_MAX;
 }
 finish_wait(&drbd_pp_wait, &wait);

 if (page)
  atomic_add(number, &device->pp_in_use);
 return page;
}
