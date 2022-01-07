
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct dtl1_info* priv; } ;
struct dtl1_info {int dummy; } ;


 int dtl1_close (struct dtl1_info*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void dtl1_detach(struct pcmcia_device *link)
{
 struct dtl1_info *info = link->priv;

 dtl1_close(info);
 pcmcia_disable_device(link);
}
