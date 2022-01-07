
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_flags; struct dtl1_info* priv; int dev; } ;
struct dtl1_info {struct pcmcia_device* p_dev; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct dtl1_info* devm_kzalloc (int *,int,int ) ;
 int dtl1_config (struct pcmcia_device*) ;

__attribute__((used)) static int dtl1_probe(struct pcmcia_device *link)
{
 struct dtl1_info *info;


 info = devm_kzalloc(&link->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->p_dev = link;
 link->priv = info;

 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

 return dtl1_config(link);
}
