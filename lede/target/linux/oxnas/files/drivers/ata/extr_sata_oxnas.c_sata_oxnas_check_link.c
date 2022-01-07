
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int SCR_STATUS ;
 int sata_oxnas_scr_read_port (struct ata_port*,int ,int*) ;

int sata_oxnas_check_link(struct ata_port *ap)
{
 int reg;

 sata_oxnas_scr_read_port(ap, SCR_STATUS, &reg);

 return reg & 0x1;
}
