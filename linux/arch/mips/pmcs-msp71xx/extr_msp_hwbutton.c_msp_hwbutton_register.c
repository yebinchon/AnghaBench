
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbutton_interrupt {scalar_t__ initial_state; int name; int irq; int eirq; int * handle_lo; int * handle_hi; } ;


 unsigned long* CIC_EXT_CFG_REG ;
 int CIC_EXT_SET_ACTIVE_HI (unsigned long,int ) ;
 int CIC_EXT_SET_ACTIVE_LO (unsigned long,int ) ;
 int CIC_EXT_SET_TRIGGER_LEVEL (unsigned long,int ) ;
 int EINVAL ;
 scalar_t__ HWBUTTON_HI ;
 int hwbutton_handler ;
 int request_irq (int ,int ,int ,int ,struct hwbutton_interrupt*) ;

__attribute__((used)) static int msp_hwbutton_register(struct hwbutton_interrupt *hirq)
{
 unsigned long cic_ext;

 if (hirq->handle_hi == ((void*)0) || hirq->handle_lo == ((void*)0))
  return -EINVAL;

 cic_ext = *CIC_EXT_CFG_REG;
 CIC_EXT_SET_TRIGGER_LEVEL(cic_ext, hirq->eirq);
 if (hirq->initial_state == HWBUTTON_HI)
  CIC_EXT_SET_ACTIVE_LO(cic_ext, hirq->eirq);
 else
  CIC_EXT_SET_ACTIVE_HI(cic_ext, hirq->eirq);
 *CIC_EXT_CFG_REG = cic_ext;

 return request_irq(hirq->irq, hwbutton_handler, 0,
      hirq->name, hirq);
}
