
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {int host; } ;


 int ata_host_put (int ) ;
 struct ata_port* tdev_to_port (struct device*) ;

__attribute__((used)) static void ata_tport_release(struct device *dev)
{
 struct ata_port *ap = tdev_to_port(dev);
 ata_host_put(ap->host);
}
