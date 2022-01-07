
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct bluecard_info* priv; } ;
struct bluecard_info {int timer; } ;


 int bluecard_close (struct bluecard_info*) ;
 int del_timer_sync (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void bluecard_release(struct pcmcia_device *link)
{
 struct bluecard_info *info = link->priv;

 bluecard_close(info);

 del_timer_sync(&(info->timer));

 pcmcia_disable_device(link);
}
