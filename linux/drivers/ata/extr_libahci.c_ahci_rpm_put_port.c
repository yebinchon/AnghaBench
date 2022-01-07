
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dev; } ;


 int pm_runtime_put (int ) ;

__attribute__((used)) static void ahci_rpm_put_port(struct ata_port *ap)
{
 pm_runtime_put(ap->dev);
}
