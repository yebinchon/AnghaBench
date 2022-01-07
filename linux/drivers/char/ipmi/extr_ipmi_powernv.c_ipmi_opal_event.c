
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_powernv {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ipmi_powernv_recv (struct ipmi_smi_powernv*) ;

__attribute__((used)) static irqreturn_t ipmi_opal_event(int irq, void *data)
{
 struct ipmi_smi_powernv *smi = data;

 ipmi_powernv_recv(smi);
 return IRQ_HANDLED;
}
