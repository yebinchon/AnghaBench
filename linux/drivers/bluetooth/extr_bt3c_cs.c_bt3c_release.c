
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct bt3c_info* priv; } ;
struct bt3c_info {int dummy; } ;


 int bt3c_close (struct bt3c_info*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void bt3c_release(struct pcmcia_device *link)
{
 struct bt3c_info *info = link->priv;

 bt3c_close(info);

 pcmcia_disable_device(link);
}
