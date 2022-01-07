
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int protocol; } ;
struct ata_queued_cmd {TYPE_2__ tf; TYPE_1__* dev; struct ata_port* ap; } ;
struct ata_port {int flags; void* hsm_task_state; } ;
struct ata_link {int dummy; } ;
struct TYPE_3__ {int flags; int devno; struct ata_link* link; } ;


 unsigned int AC_ERR_SYSTEM ;


 int ATA_DFLAG_CDB_INTR ;
 int ATA_FLAG_PIO_POLLING ;


 int ATA_TFLAG_POLLING ;
 int ATA_TFLAG_WRITE ;
 void* HSM_ST ;
 void* HSM_ST_FIRST ;
 void* HSM_ST_LAST ;
 int ata_dev_select (struct ata_port*,int ,int,int ) ;
 int ata_qc_set_polling (struct ata_queued_cmd*) ;
 int ata_sff_queue_pio_task (struct ata_link*,int ) ;
 int ata_tf_to_host (struct ata_port*,TYPE_2__*) ;

unsigned int ata_sff_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_link *link = qc->dev->link;




 if (ap->flags & ATA_FLAG_PIO_POLLING)
  qc->tf.flags |= ATA_TFLAG_POLLING;


 ata_dev_select(ap, qc->dev->devno, 1, 0);


 switch (qc->tf.protocol) {
 case 129:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_qc_set_polling(qc);

  ata_tf_to_host(ap, &qc->tf);
  ap->hsm_task_state = HSM_ST_LAST;

  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_sff_queue_pio_task(link, 0);

  break;

 case 128:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_qc_set_polling(qc);

  ata_tf_to_host(ap, &qc->tf);

  if (qc->tf.flags & ATA_TFLAG_WRITE) {

   ap->hsm_task_state = HSM_ST_FIRST;
   ata_sff_queue_pio_task(link, 0);




  } else {

   ap->hsm_task_state = HSM_ST;

   if (qc->tf.flags & ATA_TFLAG_POLLING)
    ata_sff_queue_pio_task(link, 0);





  }

  break;

 case 130:
 case 131:
  if (qc->tf.flags & ATA_TFLAG_POLLING)
   ata_qc_set_polling(qc);

  ata_tf_to_host(ap, &qc->tf);

  ap->hsm_task_state = HSM_ST_FIRST;


  if ((!(qc->dev->flags & ATA_DFLAG_CDB_INTR)) ||
      (qc->tf.flags & ATA_TFLAG_POLLING))
   ata_sff_queue_pio_task(link, 0);
  break;

 default:
  return AC_ERR_SYSTEM;
 }

 return 0;
}
