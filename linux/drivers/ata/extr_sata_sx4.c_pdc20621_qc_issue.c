
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol; int flags; } ;
struct ata_queued_cmd {TYPE_1__ tf; } ;





 int ATA_TFLAG_POLLING ;
 int BUG () ;
 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 int pdc20621_packet_start (struct ata_queued_cmd*) ;

__attribute__((used)) static unsigned int pdc20621_qc_issue(struct ata_queued_cmd *qc)
{
 switch (qc->tf.protocol) {
 case 128:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   break;

 case 129:
  pdc20621_packet_start(qc);
  return 0;

 case 130:
  BUG();
  break;

 default:
  break;
 }

 return ata_sff_qc_issue(qc);
}
