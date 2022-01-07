
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mtu2_device {TYPE_1__* pdev; scalar_t__ mapbase; } ;
struct sh_mtu2_channel {unsigned int index; scalar_t__ base; struct sh_mtu2_device* mtu; } ;
struct TYPE_2__ {int dev; } ;


 int IRQF_IRQPOLL ;
 int IRQF_NOBALANCING ;
 int IRQF_TIMER ;
 int dev_err (int *,char*,unsigned int,int) ;
 int dev_name (int *) ;
 int platform_get_irq_byname (TYPE_1__*,char*) ;
 int request_irq (int,int ,int,int ,struct sh_mtu2_channel*) ;
 scalar_t__* sh_mtu2_channel_offsets ;
 int sh_mtu2_interrupt ;
 int sh_mtu2_register (struct sh_mtu2_channel*,int ) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int sh_mtu2_setup_channel(struct sh_mtu2_channel *ch, unsigned int index,
     struct sh_mtu2_device *mtu)
{
 char name[6];
 int irq;
 int ret;

 ch->mtu = mtu;

 sprintf(name, "tgi%ua", index);
 irq = platform_get_irq_byname(mtu->pdev, name);
 if (irq < 0) {

  return 0;
 }

 ret = request_irq(irq, sh_mtu2_interrupt,
     IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
     dev_name(&ch->mtu->pdev->dev), ch);
 if (ret) {
  dev_err(&ch->mtu->pdev->dev, "ch%u: failed to request irq %d\n",
   index, irq);
  return ret;
 }

 ch->base = mtu->mapbase + sh_mtu2_channel_offsets[index];
 ch->index = index;

 return sh_mtu2_register(ch, dev_name(&mtu->pdev->dev));
}
