
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct xenbus_device {char* nodename; int dev; } ;
struct blkfront_ring_info {TYPE_5__* shadow; } ;
struct blkfront_info {int nr_ring_pages; unsigned int nr_rings; struct blkfront_ring_info* rinfo; TYPE_1__* xbdev; } ;
struct TYPE_7__ {unsigned int id; } ;
struct TYPE_8__ {TYPE_2__ rw; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_10__ {TYPE_4__ req; } ;
struct TYPE_6__ {int otherend; } ;


 int BLK_RING_SIZE (struct blkfront_info*) ;
 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t QUEUE_NAME_LEN ;
 int XEN_IO_PROTO_ABI_NATIVE ;
 int XenbusStateInitialised ;
 int blkfront_mutex ;
 int blkif_free (struct blkfront_info*,int ) ;
 int dev_set_drvdata (int *,int *) ;
 int dev_warn (int *,char*) ;
 int free_info (struct blkfront_info*) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int memset (char*,int ,size_t) ;
 unsigned int min (int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int negotiate_mq (struct blkfront_info*) ;
 int setup_blkring (struct xenbus_device*,struct blkfront_ring_info*) ;
 int snprintf (char*,size_t,char*,char*,unsigned int) ;
 size_t strlen (char*) ;
 int write_per_ring_nodes (struct xenbus_transaction,struct blkfront_ring_info*,char*) ;
 int xen_blkif_max_ring_order ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,...) ;
 int xenbus_printf (struct xenbus_transaction,char*,char*,char*,int) ;
 unsigned int xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

__attribute__((used)) static int talk_to_blkback(struct xenbus_device *dev,
      struct blkfront_info *info)
{
 const char *message = ((void*)0);
 struct xenbus_transaction xbt;
 int err;
 unsigned int i, max_page_order;
 unsigned int ring_page_order;

 if (!info)
  return -ENODEV;

 max_page_order = xenbus_read_unsigned(info->xbdev->otherend,
           "max-ring-page-order", 0);
 ring_page_order = min(xen_blkif_max_ring_order, max_page_order);
 info->nr_ring_pages = 1 << ring_page_order;

 err = negotiate_mq(info);
 if (err)
  goto destroy_blkring;

 for (i = 0; i < info->nr_rings; i++) {
  struct blkfront_ring_info *rinfo = &info->rinfo[i];


  err = setup_blkring(dev, rinfo);
  if (err)
   goto destroy_blkring;
 }

again:
 err = xenbus_transaction_start(&xbt);
 if (err) {
  xenbus_dev_fatal(dev, err, "starting transaction");
  goto destroy_blkring;
 }

 if (info->nr_ring_pages > 1) {
  err = xenbus_printf(xbt, dev->nodename, "ring-page-order", "%u",
        ring_page_order);
  if (err) {
   message = "writing ring-page-order";
   goto abort_transaction;
  }
 }


 if (info->nr_rings == 1) {
  err = write_per_ring_nodes(xbt, &info->rinfo[0], dev->nodename);
  if (err)
   goto destroy_blkring;
 } else {
  char *path;
  size_t pathsize;

  err = xenbus_printf(xbt, dev->nodename, "multi-queue-num-queues", "%u",
        info->nr_rings);
  if (err) {
   message = "writing multi-queue-num-queues";
   goto abort_transaction;
  }

  pathsize = strlen(dev->nodename) + QUEUE_NAME_LEN;
  path = kmalloc(pathsize, GFP_KERNEL);
  if (!path) {
   err = -ENOMEM;
   message = "ENOMEM while writing ring references";
   goto abort_transaction;
  }

  for (i = 0; i < info->nr_rings; i++) {
   memset(path, 0, pathsize);
   snprintf(path, pathsize, "%s/queue-%u", dev->nodename, i);
   err = write_per_ring_nodes(xbt, &info->rinfo[i], path);
   if (err) {
    kfree(path);
    goto destroy_blkring;
   }
  }
  kfree(path);
 }
 err = xenbus_printf(xbt, dev->nodename, "protocol", "%s",
       XEN_IO_PROTO_ABI_NATIVE);
 if (err) {
  message = "writing protocol";
  goto abort_transaction;
 }
 err = xenbus_printf(xbt, dev->nodename,
       "feature-persistent", "%u", 1);
 if (err)
  dev_warn(&dev->dev,
    "writing persistent grants feature to xenbus");

 err = xenbus_transaction_end(xbt, 0);
 if (err) {
  if (err == -EAGAIN)
   goto again;
  xenbus_dev_fatal(dev, err, "completing transaction");
  goto destroy_blkring;
 }

 for (i = 0; i < info->nr_rings; i++) {
  unsigned int j;
  struct blkfront_ring_info *rinfo = &info->rinfo[i];

  for (j = 0; j < BLK_RING_SIZE(info); j++)
   rinfo->shadow[j].req.u.rw.id = j + 1;
  rinfo->shadow[BLK_RING_SIZE(info)-1].req.u.rw.id = 0x0fffffff;
 }
 xenbus_switch_state(dev, XenbusStateInitialised);

 return 0;

 abort_transaction:
 xenbus_transaction_end(xbt, 1);
 if (message)
  xenbus_dev_fatal(dev, err, "%s", message);
 destroy_blkring:
 blkif_free(info, 0);

 mutex_lock(&blkfront_mutex);
 free_info(info);
 mutex_unlock(&blkfront_mutex);

 dev_set_drvdata(&dev->dev, ((void*)0));

 return err;
}
