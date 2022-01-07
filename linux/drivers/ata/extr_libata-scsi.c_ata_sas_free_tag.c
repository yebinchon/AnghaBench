
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int sas_tag_allocated; } ;


 int clear_bit (unsigned int,int *) ;

void ata_sas_free_tag(unsigned int tag, struct ata_port *ap)
{
 clear_bit(tag, &ap->sas_tag_allocated);
}
