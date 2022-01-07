
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {int dummy; } ;


 int sata_oxnas_link_write (struct ata_port*,int,int ) ;

__attribute__((used)) static int sata_oxnas_scr_write_port(struct ata_port *ap, unsigned int sc_reg,
     u32 val)
{
 sata_oxnas_link_write(ap, 0x20 + (sc_reg * 4), val);
 return 0;
}
