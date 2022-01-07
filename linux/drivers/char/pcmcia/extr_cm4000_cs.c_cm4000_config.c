
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_flags; } ;


 int CONF_AUTO_SET_IO ;
 int ENODEV ;
 int cm4000_config_check ;
 int cm4000_release (struct pcmcia_device*) ;
 scalar_t__ pcmcia_enable_device (struct pcmcia_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;

__attribute__((used)) static int cm4000_config(struct pcmcia_device * link, int devno)
{
 link->config_flags |= CONF_AUTO_SET_IO;


 if (pcmcia_loop_config(link, cm4000_config_check, ((void*)0)))
  goto cs_release;

 if (pcmcia_enable_device(link))
  goto cs_release;

 return 0;

cs_release:
 cm4000_release(link);
 return -ENODEV;
}
