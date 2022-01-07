
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int max_sectors; } ;


 int ali_warn_atapi_dma (struct ata_device*) ;

__attribute__((used)) static void ali_lock_sectors(struct ata_device *adev)
{
 adev->max_sectors = 255;
 ali_warn_atapi_dma(adev);
}
