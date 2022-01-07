
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_conf {int max_buffers; } ;
struct drbd_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {int net_conf; } ;


 TYPE_2__* first_peer_device (struct drbd_device*) ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline int drbd_get_max_buffers(struct drbd_device *device)
{
 struct net_conf *nc;
 int mxb;

 rcu_read_lock();
 nc = rcu_dereference(first_peer_device(device)->connection->net_conf);
 mxb = nc ? nc->max_buffers : 1000000;
 rcu_read_unlock();

 return mxb;
}
