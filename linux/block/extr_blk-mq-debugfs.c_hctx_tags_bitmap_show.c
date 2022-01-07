
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct request_queue {int sysfs_lock; } ;
struct blk_mq_hw_ctx {TYPE_2__* tags; struct request_queue* queue; } ;
struct TYPE_3__ {int sb; } ;
struct TYPE_4__ {TYPE_1__ bitmap_tags; } ;


 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sbitmap_bitmap_show (int *,struct seq_file*) ;

__attribute__((used)) static int hctx_tags_bitmap_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;
 struct request_queue *q = hctx->queue;
 int res;

 res = mutex_lock_interruptible(&q->sysfs_lock);
 if (res)
  goto out;
 if (hctx->tags)
  sbitmap_bitmap_show(&hctx->tags->bitmap_tags.sb, m);
 mutex_unlock(&q->sysfs_lock);

out:
 return res;
}
