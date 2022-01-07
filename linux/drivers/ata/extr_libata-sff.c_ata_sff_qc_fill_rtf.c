
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {int result_tf; TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_tf_read ) (TYPE_2__*,int *) ;} ;


 int stub1 (TYPE_2__*,int *) ;

bool ata_sff_qc_fill_rtf(struct ata_queued_cmd *qc)
{
 qc->ap->ops->sff_tf_read(qc->ap, &qc->result_tf);
 return 1;
}
