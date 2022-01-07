
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int ap; } ;


 int sata_oxnas_scr_write_port (int ,unsigned int,int ) ;

__attribute__((used)) static int sata_oxnas_scr_write(struct ata_link *link, unsigned int sc_reg,
    u32 val)
{
 return sata_oxnas_scr_write_port(link->ap, sc_reg, val);
}
