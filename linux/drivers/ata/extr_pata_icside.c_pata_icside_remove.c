
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_icside_state {scalar_t__ dma; } ;
struct expansion_card {int dummy; } ;
struct ata_host {struct pata_icside_state* private_data; } ;


 scalar_t__ NO_DMA ;
 int ata_host_detach (struct ata_host*) ;
 struct ata_host* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int free_dma (scalar_t__) ;
 int pata_icside_shutdown (struct expansion_card*) ;

__attribute__((used)) static void pata_icside_remove(struct expansion_card *ec)
{
 struct ata_host *host = ecard_get_drvdata(ec);
 struct pata_icside_state *state = host->private_data;

 ata_host_detach(host);

 pata_icside_shutdown(ec);





 if (state->dma != NO_DMA)
  free_dma(state->dma);

 ecard_release_resources(ec);
}
