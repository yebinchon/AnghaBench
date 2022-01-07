
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdc_port_priv {int pkt; int pkt_dma; } ;
struct device {int dummy; } ;
struct ata_port {struct pdc_port_priv* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ata_bmdma_port_start (struct ata_port*) ;
 struct pdc_port_priv* devm_kzalloc (struct device*,int,int ) ;
 int dmam_alloc_coherent (struct device*,int,int *,int ) ;

__attribute__((used)) static int pdc_common_port_start(struct ata_port *ap)
{
 struct device *dev = ap->host->dev;
 struct pdc_port_priv *pp;
 int rc;


 rc = ata_bmdma_port_start(ap);
 if (rc)
  return rc;

 pp = devm_kzalloc(dev, sizeof(*pp), GFP_KERNEL);
 if (!pp)
  return -ENOMEM;

 pp->pkt = dmam_alloc_coherent(dev, 128, &pp->pkt_dma, GFP_KERNEL);
 if (!pp->pkt)
  return -ENOMEM;

 ap->private_data = pp;

 return 0;
}
