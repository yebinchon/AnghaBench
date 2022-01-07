
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {TYPE_1__* pdev; int msgbuf_cache; int sglist_cache; int databuf_cache; int start_queue; } ;
struct TYPE_2__ {int dev; } ;


 int cancel_work_sync (int *) ;
 int dev_dbg (int *,char*) ;
 int kfree (struct skd_device*) ;
 int kmem_cache_destroy (int ) ;
 int skd_free_disk (struct skd_device*) ;
 int skd_free_skcomp (struct skd_device*) ;
 int skd_free_skmsg (struct skd_device*) ;
 int skd_free_sksb (struct skd_device*) ;

__attribute__((used)) static void skd_destruct(struct skd_device *skdev)
{
 if (skdev == ((void*)0))
  return;

 cancel_work_sync(&skdev->start_queue);

 dev_dbg(&skdev->pdev->dev, "disk\n");
 skd_free_disk(skdev);

 dev_dbg(&skdev->pdev->dev, "sksb\n");
 skd_free_sksb(skdev);

 dev_dbg(&skdev->pdev->dev, "skmsg\n");
 skd_free_skmsg(skdev);

 dev_dbg(&skdev->pdev->dev, "skcomp\n");
 skd_free_skcomp(skdev);

 kmem_cache_destroy(skdev->databuf_cache);
 kmem_cache_destroy(skdev->sglist_cache);
 kmem_cache_destroy(skdev->msgbuf_cache);

 dev_dbg(&skdev->pdev->dev, "skdev\n");
 kfree(skdev);
}
