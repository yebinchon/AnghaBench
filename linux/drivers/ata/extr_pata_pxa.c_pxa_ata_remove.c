
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct pata_pxa_data {int dma_chan; } ;
struct ata_host {TYPE_1__** ports; } ;
struct TYPE_2__ {struct pata_pxa_data* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int dma_release_channel (int ) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pxa_ata_remove(struct platform_device *pdev)
{
 struct ata_host *host = platform_get_drvdata(pdev);
 struct pata_pxa_data *data = host->ports[0]->private_data;

 dma_release_channel(data->dma_chan);

 ata_host_detach(host);

 return 0;
}
