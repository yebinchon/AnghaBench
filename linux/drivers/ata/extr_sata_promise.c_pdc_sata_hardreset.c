
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ata_link {TYPE_1__* ap; } ;
struct TYPE_4__ {int flags; } ;


 int PDC_FLAG_GEN_II ;
 int pdc_hard_reset_port (TYPE_1__*) ;
 int pdc_not_at_command_packet_phase (TYPE_1__*) ;
 int pdc_reset_port (TYPE_1__*) ;
 int sata_std_hardreset (struct ata_link*,unsigned int*,unsigned long) ;

__attribute__((used)) static int pdc_sata_hardreset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 if (link->ap->flags & PDC_FLAG_GEN_II)
  pdc_not_at_command_packet_phase(link->ap);

 pdc_hard_reset_port(link->ap);
 pdc_reset_port(link->ap);





 return sata_std_hardreset(link, class, deadline);
}
