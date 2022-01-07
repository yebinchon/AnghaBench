
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int status_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int readl (int ) ;

__attribute__((used)) static u8 k2_stat_check_status(struct ata_port *ap)
{
 return readl(ap->ioaddr.status_addr);
}
