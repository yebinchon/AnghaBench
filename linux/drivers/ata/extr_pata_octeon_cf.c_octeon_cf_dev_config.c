
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int max_sectors; } ;


 int min (int ,unsigned int) ;

__attribute__((used)) static void octeon_cf_dev_config(struct ata_device *dev)
{





 dev->max_sectors = min(dev->max_sectors, 4095U);
}
