
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ class; } ;


 scalar_t__ ATA_DEV_ATA ;
 unsigned long ATA_MASK_UDMA ;

__attribute__((used)) static unsigned long serverworks_osb4_filter(struct ata_device *adev, unsigned long mask)
{
 if (adev->class == ATA_DEV_ATA)
  mask &= ~ATA_MASK_UDMA;
 return mask;
}
