
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * resource; } ;


 int ENODEV ;
 size_t PCMCIA_IOPORT_0 ;
 int pcmcia_request_io (struct pcmcia_device*) ;
 int resource_size (int ) ;

__attribute__((used)) static int scr24x_config_check(struct pcmcia_device *link, void *priv_data)
{
 if (resource_size(link->resource[PCMCIA_IOPORT_0]) != 0x11)
  return -ENODEV;
 return pcmcia_request_io(link);
}
