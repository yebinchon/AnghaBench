
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int port_no; } ;
struct ata_device {scalar_t__ devno; } ;



__attribute__((used)) static unsigned long sil680_seldev(struct ata_port *ap, struct ata_device *adev, int r)
{
 unsigned long base = 0xA0 + r;
 base += (ap->port_no << 4);
 base |= adev->devno ? 2 : 0;
 return base;
}
