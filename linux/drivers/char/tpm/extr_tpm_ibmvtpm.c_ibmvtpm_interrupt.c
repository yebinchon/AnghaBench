
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvtpm_dev {int dummy; } ;
struct ibmvtpm_crq {scalar_t__ valid; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct ibmvtpm_crq* ibmvtpm_crq_get_next (struct ibmvtpm_dev*) ;
 int ibmvtpm_crq_process (struct ibmvtpm_crq*,struct ibmvtpm_dev*) ;
 int smp_wmb () ;

__attribute__((used)) static irqreturn_t ibmvtpm_interrupt(int irq, void *vtpm_instance)
{
 struct ibmvtpm_dev *ibmvtpm = (struct ibmvtpm_dev *) vtpm_instance;
 struct ibmvtpm_crq *crq;





 while ((crq = ibmvtpm_crq_get_next(ibmvtpm)) != ((void*)0)) {
  ibmvtpm_crq_process(crq, ibmvtpm);
  crq->valid = 0;
  smp_wmb();
 }

 return IRQ_HANDLED;
}
