
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_backing_dev {int disk_conf; } ;
struct disk_conf {int disk_drain; int disk_flushes; } ;
typedef enum write_ordering_e { ____Placeholder_write_ordering_e } write_ordering_e ;


 int WO_BDEV_FLUSH ;
 int WO_DRAIN_IO ;
 int WO_NONE ;
 struct disk_conf* rcu_dereference (int ) ;

__attribute__((used)) static enum write_ordering_e
max_allowed_wo(struct drbd_backing_dev *bdev, enum write_ordering_e wo)
{
 struct disk_conf *dc;

 dc = rcu_dereference(bdev->disk_conf);

 if (wo == WO_BDEV_FLUSH && !dc->disk_flushes)
  wo = WO_DRAIN_IO;
 if (wo == WO_DRAIN_IO && !dc->disk_drain)
  wo = WO_NONE;

 return wo;
}
