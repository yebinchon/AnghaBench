
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int sas_last_tag; int sas_tag_allocated; TYPE_1__* host; } ;
struct TYPE_2__ {unsigned int n_tags; } ;


 scalar_t__ ata_tag_internal (unsigned int) ;
 int test_and_set_bit (unsigned int,int *) ;

int ata_sas_allocate_tag(struct ata_port *ap)
{
 unsigned int max_queue = ap->host->n_tags;
 unsigned int i, tag;

 for (i = 0, tag = ap->sas_last_tag + 1; i < max_queue; i++, tag++) {
  tag = tag < max_queue ? tag : 0;


  if (ata_tag_internal(tag))
   continue;

  if (!test_and_set_bit(tag, &ap->sas_tag_allocated)) {
   ap->sas_last_tag = tag;
   return tag;
  }
 }
 return -1;
}
