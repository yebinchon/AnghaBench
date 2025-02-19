
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int major; int cur_max_queue_depth; int queue_low_water_mark; int proto_ver; int sgs_per_request; struct pci_dev* pdev; void* databuf_cache; void* sglist_cache; void* msgbuf_cache; int completion_worker; int start_queue; int lock; int dbg_level; void* num_fitmsg_context; void* num_req_context; scalar_t__ dev_max_queue_depth; scalar_t__ devno; int state; } ;
struct pci_dev {int dev; } ;
struct fit_sg_descriptor {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int SKD_DRVR_STATE_LOAD ;
 int SKD_N_FITMSG_BYTES ;
 size_t SKD_N_INTERNAL_BYTES ;
 int SKD_N_SPECIAL_FITMSG_BYTES ;
 int SLAB_HWCACHE_ALIGN ;
 int WARN_ONCE (int,char*,size_t,size_t) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 void* kmem_cache_create (char*,size_t,int ,int ,int *) ;
 size_t kmem_cache_size (void*) ;
 struct skd_device* kzalloc (int,int ) ;
 size_t max (int ,int ) ;
 int skd_completion_worker ;
 int skd_cons_disk (struct skd_device*) ;
 int skd_cons_skcomp (struct skd_device*) ;
 int skd_cons_skmsg (struct skd_device*) ;
 int skd_cons_sksb (struct skd_device*) ;
 int skd_dbg_level ;
 int skd_destruct (struct skd_device*) ;
 int skd_major ;
 void* skd_max_queue_depth ;
 int skd_next_devno ;
 int skd_sgs_per_request ;
 int skd_start_queue ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct skd_device *skd_construct(struct pci_dev *pdev)
{
 struct skd_device *skdev;
 int blk_major = skd_major;
 size_t size;
 int rc;

 skdev = kzalloc(sizeof(*skdev), GFP_KERNEL);

 if (!skdev) {
  dev_err(&pdev->dev, "memory alloc failure\n");
  return ((void*)0);
 }

 skdev->state = SKD_DRVR_STATE_LOAD;
 skdev->pdev = pdev;
 skdev->devno = skd_next_devno++;
 skdev->major = blk_major;
 skdev->dev_max_queue_depth = 0;

 skdev->num_req_context = skd_max_queue_depth;
 skdev->num_fitmsg_context = skd_max_queue_depth;
 skdev->cur_max_queue_depth = 1;
 skdev->queue_low_water_mark = 1;
 skdev->proto_ver = 99;
 skdev->sgs_per_request = skd_sgs_per_request;
 skdev->dbg_level = skd_dbg_level;

 spin_lock_init(&skdev->lock);

 INIT_WORK(&skdev->start_queue, skd_start_queue);
 INIT_WORK(&skdev->completion_worker, skd_completion_worker);

 size = max(SKD_N_FITMSG_BYTES, SKD_N_SPECIAL_FITMSG_BYTES);
 skdev->msgbuf_cache = kmem_cache_create("skd-msgbuf", size, 0,
      SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!skdev->msgbuf_cache)
  goto err_out;
 WARN_ONCE(kmem_cache_size(skdev->msgbuf_cache) < size,
    "skd-msgbuf: %d < %zd\n",
    kmem_cache_size(skdev->msgbuf_cache), size);
 size = skd_sgs_per_request * sizeof(struct fit_sg_descriptor);
 skdev->sglist_cache = kmem_cache_create("skd-sglist", size, 0,
      SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!skdev->sglist_cache)
  goto err_out;
 WARN_ONCE(kmem_cache_size(skdev->sglist_cache) < size,
    "skd-sglist: %d < %zd\n",
    kmem_cache_size(skdev->sglist_cache), size);
 size = SKD_N_INTERNAL_BYTES;
 skdev->databuf_cache = kmem_cache_create("skd-databuf", size, 0,
       SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!skdev->databuf_cache)
  goto err_out;
 WARN_ONCE(kmem_cache_size(skdev->databuf_cache) < size,
    "skd-databuf: %d < %zd\n",
    kmem_cache_size(skdev->databuf_cache), size);

 dev_dbg(&skdev->pdev->dev, "skcomp\n");
 rc = skd_cons_skcomp(skdev);
 if (rc < 0)
  goto err_out;

 dev_dbg(&skdev->pdev->dev, "skmsg\n");
 rc = skd_cons_skmsg(skdev);
 if (rc < 0)
  goto err_out;

 dev_dbg(&skdev->pdev->dev, "sksb\n");
 rc = skd_cons_sksb(skdev);
 if (rc < 0)
  goto err_out;

 dev_dbg(&skdev->pdev->dev, "disk\n");
 rc = skd_cons_disk(skdev);
 if (rc < 0)
  goto err_out;

 dev_dbg(&skdev->pdev->dev, "VICTORY\n");
 return skdev;

err_out:
 dev_dbg(&skdev->pdev->dev, "construct failed\n");
 skd_destruct(skdev);
 return ((void*)0);
}
