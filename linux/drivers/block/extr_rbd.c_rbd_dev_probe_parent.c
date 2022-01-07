
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int parent_ref; struct rbd_device* parent; int parent_spec; int rbd_client; } ;


 int EINVAL ;
 int ENOMEM ;
 int RBD_MAX_PARENT_CHAIN_LEN ;
 struct rbd_device* __rbd_dev_create (int ,int ) ;
 int __rbd_get_client (int ) ;
 int atomic_set (int *,int) ;
 int pr_info (char*,int) ;
 int rbd_dev_destroy (struct rbd_device*) ;
 int rbd_dev_image_probe (struct rbd_device*,int) ;
 int rbd_dev_unparent (struct rbd_device*) ;
 int rbd_spec_get (int ) ;

__attribute__((used)) static int rbd_dev_probe_parent(struct rbd_device *rbd_dev, int depth)
{
 struct rbd_device *parent = ((void*)0);
 int ret;

 if (!rbd_dev->parent_spec)
  return 0;

 if (++depth > RBD_MAX_PARENT_CHAIN_LEN) {
  pr_info("parent chain is too long (%d)\n", depth);
  ret = -EINVAL;
  goto out_err;
 }

 parent = __rbd_dev_create(rbd_dev->rbd_client, rbd_dev->parent_spec);
 if (!parent) {
  ret = -ENOMEM;
  goto out_err;
 }





 __rbd_get_client(rbd_dev->rbd_client);
 rbd_spec_get(rbd_dev->parent_spec);

 ret = rbd_dev_image_probe(parent, depth);
 if (ret < 0)
  goto out_err;

 rbd_dev->parent = parent;
 atomic_set(&rbd_dev->parent_ref, 1);
 return 0;

out_err:
 rbd_dev_unparent(rbd_dev);
 rbd_dev_destroy(parent);
 return ret;
}
