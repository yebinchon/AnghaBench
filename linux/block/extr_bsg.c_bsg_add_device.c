
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class_dev; } ;
struct request_queue {TYPE_1__ bsg_dev; } ;
struct inode {int i_rdev; } ;
struct file {int dummy; } ;
struct bsg_device {int max_queue; int name; int dev_list; int ref_count; struct request_queue* queue; } ;


 int ENOMEM ;
 int ENXIO ;
 struct bsg_device* ERR_PTR (int ) ;
 int blk_get_queue (struct request_queue*) ;
 int blk_put_queue (struct request_queue*) ;
 struct bsg_device* bsg_alloc_device () ;
 int bsg_dbg (struct bsg_device*,char*,int ,int ) ;
 int bsg_dev_idx_hash (int ) ;
 int bsg_mutex ;
 int dev_name (int ) ;
 int format_dev_t (unsigned char*,int ) ;
 int hlist_add_head (int *,int ) ;
 int iminor (struct inode*) ;
 int lockdep_assert_held (int *) ;
 int refcount_set (int *,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static struct bsg_device *bsg_add_device(struct inode *inode,
      struct request_queue *rq,
      struct file *file)
{
 struct bsg_device *bd;
 unsigned char buf[32];

 lockdep_assert_held(&bsg_mutex);

 if (!blk_get_queue(rq))
  return ERR_PTR(-ENXIO);

 bd = bsg_alloc_device();
 if (!bd) {
  blk_put_queue(rq);
  return ERR_PTR(-ENOMEM);
 }

 bd->queue = rq;

 refcount_set(&bd->ref_count, 1);
 hlist_add_head(&bd->dev_list, bsg_dev_idx_hash(iminor(inode)));

 strncpy(bd->name, dev_name(rq->bsg_dev.class_dev), sizeof(bd->name) - 1);
 bsg_dbg(bd, "bound to <%s>, max queue %d\n",
  format_dev_t(buf, inode->i_rdev), bd->max_queue);

 return bd;
}
