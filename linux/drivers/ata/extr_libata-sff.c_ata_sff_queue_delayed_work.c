
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int ata_sff_wq ;
 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

void ata_sff_queue_delayed_work(struct delayed_work *dwork, unsigned long delay)
{
 queue_delayed_work(ata_sff_wq, dwork, delay);
}
