
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int sff_pio_task; struct ata_link* sff_pio_task_link; } ;
struct ata_link {struct ata_port* ap; } ;


 int WARN_ON (int) ;
 int ata_sff_queue_delayed_work (int *,int ) ;
 int msecs_to_jiffies (unsigned long) ;

void ata_sff_queue_pio_task(struct ata_link *link, unsigned long delay)
{
 struct ata_port *ap = link->ap;

 WARN_ON((ap->sff_pio_task_link != ((void*)0)) &&
  (ap->sff_pio_task_link != link));
 ap->sff_pio_task_link = link;


 ata_sff_queue_delayed_work(&ap->sff_pio_task, msecs_to_jiffies(delay));
}
