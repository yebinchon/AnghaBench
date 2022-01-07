
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct bt3c_info* priv; } ;
struct bt3c_info {int dummy; } ;


 int BT_ERR (char*) ;
 int ENODEV ;
 int bt3c_check_config ;
 int bt3c_check_config_notpicky ;
 int bt3c_interrupt ;
 scalar_t__ bt3c_open (struct bt3c_info*) ;
 int bt3c_release (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,void*) ;
 int pcmcia_request_irq (struct pcmcia_device*,int *) ;

__attribute__((used)) static int bt3c_config(struct pcmcia_device *link)
{
 struct bt3c_info *info = link->priv;
 int i;
 unsigned long try;




 for (try = 0; try < 2; try++)
  if (!pcmcia_loop_config(link, bt3c_check_config, (void *) try))
   goto found_port;





 if (!pcmcia_loop_config(link, bt3c_check_config_notpicky, ((void*)0)))
  goto found_port;

 BT_ERR("No usable port range found");
 goto failed;

found_port:
 i = pcmcia_request_irq(link, &bt3c_interrupt);
 if (i != 0)
  goto failed;

 i = pcmcia_enable_device(link);
 if (i != 0)
  goto failed;

 if (bt3c_open(info) != 0)
  goto failed;

 return 0;

failed:
 bt3c_release(link);
 return -ENODEV;
}
