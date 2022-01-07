
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int ata_sff_wq ;
 int queue_work (int ,struct work_struct*) ;

void ata_sff_queue_work(struct work_struct *work)
{
 queue_work(ata_sff_wq, work);
}
