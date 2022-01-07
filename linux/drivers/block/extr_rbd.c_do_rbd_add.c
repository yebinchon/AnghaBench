
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rbd_spec {scalar_t__ pool_id; int pool_name; } ;
struct rbd_options {int dummy; } ;
struct TYPE_14__ {int features; } ;
struct TYPE_13__ {scalar_t__ object_size; } ;
struct rbd_device {TYPE_6__ header; TYPE_7__* disk; int node; int dev; TYPE_5__ layout; TYPE_4__* opts; TYPE_3__* spec; int header_rwsem; int config_info; } ;
struct rbd_client {TYPE_2__* client; } ;
struct ceph_options {int dummy; } ;
struct bus_type {int dummy; } ;
typedef int ssize_t ;
struct TYPE_15__ {int disk_name; int queue; } ;
struct TYPE_12__ {int read_only; scalar_t__ alloc_size; } ;
struct TYPE_11__ {scalar_t__ snap_id; } ;
struct TYPE_9__ {int osdmap; } ;
struct TYPE_10__ {TYPE_1__ osdc; } ;


 scalar_t__ CEPH_NOSNAP ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rbd_client*) ;
 int PTR_ERR (struct rbd_client*) ;
 unsigned long long SECTOR_SHIFT ;
 int THIS_MODULE ;
 int add_disk (TYPE_7__*) ;
 int blk_put_queue (int ) ;
 int ceph_pg_poolid_by_name (int ,int ) ;
 int device_add (int *) ;
 int down_write (int *) ;
 scalar_t__ get_capacity (TYPE_7__*) ;
 int kfree (struct rbd_options*) ;
 int kstrdup (char const*,int ) ;
 int list_add_tail (int *,int *) ;
 int module_put (int ) ;
 int pr_info (char*,int ,...) ;
 int rbd_add_acquire_lock (struct rbd_device*) ;
 int rbd_add_parse_args (char const*,struct ceph_options**,struct rbd_options**,struct rbd_spec**) ;
 struct rbd_device* rbd_dev_create (struct rbd_client*,struct rbd_spec*,struct rbd_options*) ;
 int rbd_dev_destroy (struct rbd_device*) ;
 int rbd_dev_device_release (struct rbd_device*) ;
 int rbd_dev_device_setup (struct rbd_device*) ;
 int rbd_dev_image_probe (struct rbd_device*,int ) ;
 int rbd_dev_image_release (struct rbd_device*) ;
 int rbd_dev_image_unlock (struct rbd_device*) ;
 int rbd_dev_list ;
 int rbd_dev_list_lock ;
 struct rbd_client* rbd_get_client (struct ceph_options*) ;
 int rbd_put_client (struct rbd_client*) ;
 int rbd_spec_put (struct rbd_spec*) ;
 int rbd_warn (struct rbd_device*,char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t do_rbd_add(struct bus_type *bus,
     const char *buf,
     size_t count)
{
 struct rbd_device *rbd_dev = ((void*)0);
 struct ceph_options *ceph_opts = ((void*)0);
 struct rbd_options *rbd_opts = ((void*)0);
 struct rbd_spec *spec = ((void*)0);
 struct rbd_client *rbdc;
 int rc;

 if (!try_module_get(THIS_MODULE))
  return -ENODEV;


 rc = rbd_add_parse_args(buf, &ceph_opts, &rbd_opts, &spec);
 if (rc < 0)
  goto out;

 rbdc = rbd_get_client(ceph_opts);
 if (IS_ERR(rbdc)) {
  rc = PTR_ERR(rbdc);
  goto err_out_args;
 }


 rc = ceph_pg_poolid_by_name(rbdc->client->osdc.osdmap, spec->pool_name);
 if (rc < 0) {
  if (rc == -ENOENT)
   pr_info("pool %s does not exist\n", spec->pool_name);
  goto err_out_client;
 }
 spec->pool_id = (u64)rc;

 rbd_dev = rbd_dev_create(rbdc, spec, rbd_opts);
 if (!rbd_dev) {
  rc = -ENOMEM;
  goto err_out_client;
 }
 rbdc = ((void*)0);
 spec = ((void*)0);
 rbd_opts = ((void*)0);

 rbd_dev->config_info = kstrdup(buf, GFP_KERNEL);
 if (!rbd_dev->config_info) {
  rc = -ENOMEM;
  goto err_out_rbd_dev;
 }

 down_write(&rbd_dev->header_rwsem);
 rc = rbd_dev_image_probe(rbd_dev, 0);
 if (rc < 0) {
  up_write(&rbd_dev->header_rwsem);
  goto err_out_rbd_dev;
 }


 if (rbd_dev->spec->snap_id != CEPH_NOSNAP)
  rbd_dev->opts->read_only = 1;

 if (rbd_dev->opts->alloc_size > rbd_dev->layout.object_size) {
  rbd_warn(rbd_dev, "alloc_size adjusted to %u",
    rbd_dev->layout.object_size);
  rbd_dev->opts->alloc_size = rbd_dev->layout.object_size;
 }

 rc = rbd_dev_device_setup(rbd_dev);
 if (rc)
  goto err_out_image_probe;

 rc = rbd_add_acquire_lock(rbd_dev);
 if (rc)
  goto err_out_image_lock;



 rc = device_add(&rbd_dev->dev);
 if (rc)
  goto err_out_image_lock;

 add_disk(rbd_dev->disk);

 blk_put_queue(rbd_dev->disk->queue);

 spin_lock(&rbd_dev_list_lock);
 list_add_tail(&rbd_dev->node, &rbd_dev_list);
 spin_unlock(&rbd_dev_list_lock);

 pr_info("%s: capacity %llu features 0x%llx\n", rbd_dev->disk->disk_name,
  (unsigned long long)get_capacity(rbd_dev->disk) << SECTOR_SHIFT,
  rbd_dev->header.features);
 rc = count;
out:
 module_put(THIS_MODULE);
 return rc;

err_out_image_lock:
 rbd_dev_image_unlock(rbd_dev);
 rbd_dev_device_release(rbd_dev);
err_out_image_probe:
 rbd_dev_image_release(rbd_dev);
err_out_rbd_dev:
 rbd_dev_destroy(rbd_dev);
err_out_client:
 rbd_put_client(rbdc);
err_out_args:
 rbd_spec_put(spec);
 kfree(rbd_opts);
 goto out;
}
