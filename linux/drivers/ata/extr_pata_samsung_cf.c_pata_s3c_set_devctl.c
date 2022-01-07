
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ctl_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int host; } ;


 int ata_outb (int ,int ,int ) ;

__attribute__((used)) static void pata_s3c_set_devctl(struct ata_port *ap, u8 ctl)
{
 ata_outb(ap->host, ctl, ap->ioaddr.ctl_addr);
}
