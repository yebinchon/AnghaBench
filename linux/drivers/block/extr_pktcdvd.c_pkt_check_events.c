
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pktcdvd_device {TYPE_1__* bdev; } ;
struct gendisk {TYPE_2__* fops; struct pktcdvd_device* private_data; } ;
struct TYPE_4__ {unsigned int (* check_events ) (struct gendisk*,unsigned int) ;} ;
struct TYPE_3__ {struct gendisk* bd_disk; } ;


 unsigned int stub1 (struct gendisk*,unsigned int) ;

__attribute__((used)) static unsigned int pkt_check_events(struct gendisk *disk,
         unsigned int clearing)
{
 struct pktcdvd_device *pd = disk->private_data;
 struct gendisk *attached_disk;

 if (!pd)
  return 0;
 if (!pd->bdev)
  return 0;
 attached_disk = pd->bdev->bd_disk;
 if (!attached_disk || !attached_disk->fops->check_events)
  return 0;
 return attached_disk->fops->check_events(attached_disk, clearing);
}
