
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int tdev; } ;


 int put_device (int *) ;
 int transport_destroy_device (int *) ;

__attribute__((used)) static void ata_tdev_free(struct ata_device *dev)
{
 transport_destroy_device(&dev->tdev);
 put_device(&dev->tdev);
}
