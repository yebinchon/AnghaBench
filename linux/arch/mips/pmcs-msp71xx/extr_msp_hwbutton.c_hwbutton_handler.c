
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbutton_interrupt {int data; int (* handle_lo ) (int ) ;int eirq; int (* handle_hi ) (int ) ;} ;
typedef int irqreturn_t ;


 unsigned long* CIC_EXT_CFG_REG ;
 scalar_t__ CIC_EXT_IS_ACTIVE_HI (unsigned long,int ) ;
 int CIC_EXT_SET_ACTIVE_HI (unsigned long,int ) ;
 int CIC_EXT_SET_ACTIVE_LO (unsigned long,int ) ;
 int IRQ_HANDLED ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static irqreturn_t hwbutton_handler(int irq, void *data)
{
 struct hwbutton_interrupt *hirq = data;
 unsigned long cic_ext = *CIC_EXT_CFG_REG;

 if (CIC_EXT_IS_ACTIVE_HI(cic_ext, hirq->eirq)) {

  CIC_EXT_SET_ACTIVE_LO(cic_ext, hirq->eirq);
  hirq->handle_hi(hirq->data);
 } else {

  CIC_EXT_SET_ACTIVE_HI(cic_ext, hirq->eirq);
  hirq->handle_lo(hirq->data);
 }





 *CIC_EXT_CFG_REG = cic_ext;

 return IRQ_HANDLED;
}
