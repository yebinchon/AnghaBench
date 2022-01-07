
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_client {TYPE_2__* client; } ;
struct ceph_options {int dummy; } ;
struct TYPE_4__ {TYPE_1__* options; } ;
struct TYPE_3__ {int mount_timeout; } ;


 struct rbd_client* ERR_PTR (int) ;
 int ceph_destroy_options (struct ceph_options*) ;
 int ceph_wait_for_latest_osdmap (TYPE_2__*,int ) ;
 int client_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rbd_client* rbd_client_create (struct ceph_options*) ;
 struct rbd_client* rbd_client_find (struct ceph_options*) ;
 int rbd_put_client (struct rbd_client*) ;
 int rbd_warn (int *,char*,int) ;

__attribute__((used)) static struct rbd_client *rbd_get_client(struct ceph_options *ceph_opts)
{
 struct rbd_client *rbdc;
 int ret;

 mutex_lock(&client_mutex);
 rbdc = rbd_client_find(ceph_opts);
 if (rbdc) {
  ceph_destroy_options(ceph_opts);





  ret = ceph_wait_for_latest_osdmap(rbdc->client,
     rbdc->client->options->mount_timeout);
  if (ret) {
   rbd_warn(((void*)0), "failed to get latest osdmap: %d", ret);
   rbd_put_client(rbdc);
   rbdc = ERR_PTR(ret);
  }
 } else {
  rbdc = rbd_client_create(ceph_opts);
 }
 mutex_unlock(&client_mutex);

 return rbdc;
}
