
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dev; } ;


 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int ahci_rpm_get_port(struct ata_port *ap)
{
 return pm_runtime_get_sync(ap->dev);
}
