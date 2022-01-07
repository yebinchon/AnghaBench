
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int altstatus_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int host; } ;


 int ata_inb (int ,int ) ;

__attribute__((used)) static u8 pata_s3c_check_altstatus(struct ata_port *ap)
{
 return ata_inb(ap->host, ap->ioaddr.altstatus_addr);
}
