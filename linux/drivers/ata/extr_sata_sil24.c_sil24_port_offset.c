
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {unsigned long port_no; } ;


 unsigned long PORT_REGS_SIZE ;

__attribute__((used)) static unsigned long sil24_port_offset(struct ata_port *ap)
{
 return ap->port_no * PORT_REGS_SIZE;
}
