
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol; } ;
struct ata_queued_cmd {TYPE_1__ tf; } ;




 int pdc20621_dma_prep (struct ata_queued_cmd*) ;
 int pdc20621_nodata_prep (struct ata_queued_cmd*) ;

__attribute__((used)) static void pdc20621_qc_prep(struct ata_queued_cmd *qc)
{
 switch (qc->tf.protocol) {
 case 129:
  pdc20621_dma_prep(qc);
  break;
 case 128:
  pdc20621_nodata_prep(qc);
  break;
 default:
  break;
 }
}
