
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_sff_dev_select (struct ata_port*,unsigned int) ;
 int pata_macio_apply_timings (struct ata_port*,unsigned int) ;

__attribute__((used)) static void pata_macio_dev_select(struct ata_port *ap, unsigned int device)
{
 ata_sff_dev_select(ap, device);


 pata_macio_apply_timings(ap, device);
}
