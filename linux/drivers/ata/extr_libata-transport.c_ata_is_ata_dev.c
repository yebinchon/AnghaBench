
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ ata_tdev_release ;

__attribute__((used)) static int ata_is_ata_dev(const struct device *dev)
{
 return dev->release == ata_tdev_release;
}
