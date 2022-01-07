
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {int watch_mutex; int watch_cookie; TYPE_1__* rbd_client; } ;
struct rbd_client_id {int handle; int gid; } ;
struct TYPE_2__ {int client; } ;


 int ceph_client_gid (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct rbd_client_id rbd_get_cid(struct rbd_device *rbd_dev)
{
 struct rbd_client_id cid;

 mutex_lock(&rbd_dev->watch_mutex);
 cid.gid = ceph_client_gid(rbd_dev->rbd_client->client);
 cid.handle = rbd_dev->watch_cookie;
 mutex_unlock(&rbd_dev->watch_mutex);
 return cid;
}
