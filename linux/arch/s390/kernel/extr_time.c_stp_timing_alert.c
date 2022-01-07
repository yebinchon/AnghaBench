
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_irq_parm {scalar_t__ tcpc; scalar_t__ lac; scalar_t__ tsc; } ;


 int queue_work (int ,int *) ;
 int stp_work ;
 int time_sync_wq ;

__attribute__((used)) static void stp_timing_alert(struct stp_irq_parm *intparm)
{
 if (intparm->tsc || intparm->lac || intparm->tcpc)
  queue_work(time_sync_wq, &stp_work);
}
