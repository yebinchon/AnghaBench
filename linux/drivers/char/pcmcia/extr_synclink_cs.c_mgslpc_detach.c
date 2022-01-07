
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct pcmcia_device {scalar_t__ priv; } ;
struct TYPE_3__ {int stop; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 int mgslpc_release (int ) ;
 int mgslpc_remove_device (TYPE_1__*) ;
 int printk (char*,struct pcmcia_device*) ;

__attribute__((used)) static void mgslpc_detach(struct pcmcia_device *link)
{
 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("mgslpc_detach(0x%p)\n", link);

 ((MGSLPC_INFO *)link->priv)->stop = 1;
 mgslpc_release((u_long)link);

 mgslpc_remove_device((MGSLPC_INFO *)link->priv);
}
