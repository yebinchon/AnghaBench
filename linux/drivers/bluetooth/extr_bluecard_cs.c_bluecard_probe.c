
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_flags; struct bluecard_info* priv; int dev; } ;
struct bluecard_info {struct pcmcia_device* p_dev; } ;


 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bluecard_config (struct pcmcia_device*) ;
 struct bluecard_info* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int bluecard_probe(struct pcmcia_device *link)
{
 struct bluecard_info *info;


 info = devm_kzalloc(&link->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->p_dev = link;
 link->priv = info;

 link->config_flags |= CONF_ENABLE_IRQ;

 return bluecard_config(link);
}
