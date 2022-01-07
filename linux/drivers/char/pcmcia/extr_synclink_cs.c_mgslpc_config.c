
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct pcmcia_device {int config_flags; int config_index; int irq; TYPE_1__** resource; int config_regs; TYPE_2__* priv; } ;
struct TYPE_4__ {int irq_level; int io_base; } ;
struct TYPE_3__ {int start; } ;
typedef TYPE_2__ MGSLPC_INFO ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 scalar_t__ DEBUG_LEVEL_INFO ;
 int ENODEV ;
 int PRESENT_OPTION ;
 scalar_t__ debug_level ;
 int mgslpc_ioprobe ;
 int mgslpc_isr ;
 int mgslpc_release (int ) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pcmcia_request_irq (struct pcmcia_device*,int ) ;
 int printk (char*,struct pcmcia_device*) ;

__attribute__((used)) static int mgslpc_config(struct pcmcia_device *link)
{
 MGSLPC_INFO *info = link->priv;
 int ret;

 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("mgslpc_config(0x%p)\n", link);

 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

 ret = pcmcia_loop_config(link, mgslpc_ioprobe, ((void*)0));
 if (ret != 0)
  goto failed;

 link->config_index = 8;
 link->config_regs = PRESENT_OPTION;

 ret = pcmcia_request_irq(link, mgslpc_isr);
 if (ret)
  goto failed;
 ret = pcmcia_enable_device(link);
 if (ret)
  goto failed;

 info->io_base = link->resource[0]->start;
 info->irq_level = link->irq;
 return 0;

failed:
 mgslpc_release((u_long)link);
 return -ENODEV;
}
