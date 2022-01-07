
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_private {int read_queue; TYPE_1__* shr; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int state; } ;


 int IRQ_HANDLED ;




 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t tpmif_interrupt(int dummy, void *dev_id)
{
 struct tpm_private *priv = dev_id;

 switch (priv->shr->state) {
 case 129:
 case 130:
  wake_up_interruptible(&priv->read_queue);
  break;
 case 128:
 case 131:
 default:
  break;
 }
 return IRQ_HANDLED;
}
