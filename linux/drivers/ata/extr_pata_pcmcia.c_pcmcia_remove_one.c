
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct ata_host* priv; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void pcmcia_remove_one(struct pcmcia_device *pdev)
{
 struct ata_host *host = pdev->priv;

 if (host)
  ata_host_detach(host);

 pcmcia_disable_device(pdev);
}
