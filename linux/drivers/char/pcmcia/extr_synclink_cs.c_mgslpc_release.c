
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct pcmcia_device {int dummy; } ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int printk (char*,struct pcmcia_device*) ;

__attribute__((used)) static void mgslpc_release(u_long arg)
{
 struct pcmcia_device *link = (struct pcmcia_device *)arg;

 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("mgslpc_release(0x%p)\n", link);

 pcmcia_disable_device(link);
}
