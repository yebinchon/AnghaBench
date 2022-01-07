
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; struct dtl1_info* priv; } ;
struct dtl1_info {int dummy; } ;
struct TYPE_2__ {int end; } ;


 int dtl1_confcheck ;
 int dtl1_detach (struct pcmcia_device*) ;
 int dtl1_interrupt ;
 int dtl1_open (struct dtl1_info*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pcmcia_request_irq (struct pcmcia_device*,int ) ;

__attribute__((used)) static int dtl1_config(struct pcmcia_device *link)
{
 struct dtl1_info *info = link->priv;
 int ret;


 link->resource[0]->end = 8;
 ret = pcmcia_loop_config(link, dtl1_confcheck, ((void*)0));
 if (ret)
  goto failed;

 ret = pcmcia_request_irq(link, dtl1_interrupt);
 if (ret)
  goto failed;

 ret = pcmcia_enable_device(link);
 if (ret)
  goto failed;

 ret = dtl1_open(info);
 if (ret)
  goto failed;

 return 0;

failed:
 dtl1_detach(link);
 return ret;
}
