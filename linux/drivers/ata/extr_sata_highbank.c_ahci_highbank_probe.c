
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ecx_plat_data {int n_ports; } ;
typedef struct ata_port_info {int flags; scalar_t__ private_data; } const ata_port_info ;
struct ata_port {int port_no; int flags; int * ops; int em_message_type; } ;
struct ata_host {int n_ports; struct ata_port** ports; int flags; struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {int irq; unsigned long flags; int cap; int port_map; int em_msg_type; struct ecx_plat_data* plat_data; int mmio; } ;


 int ATA_FLAG_EM ;
 int ATA_FLAG_NCQ ;
 int ATA_FLAG_PMP ;
 int ATA_HOST_PARALLEL_SCAN ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HOST_CAP_64 ;
 int HOST_CAP_NCQ ;
 int HOST_CAP_PMP ;
 int HOST_CAP_SSS ;
 int IORESOURCE_MEM ;
 int ahci_highbank_platform_sht ;
 struct ata_port_info const ahci_highbank_port_info ;
 int ahci_host_activate (struct ata_host*,int *) ;
 scalar_t__ ahci_ignore_sss ;
 int ahci_init_controller (struct ata_host*) ;
 int ahci_nr_ports (int) ;
 int ahci_print_info (struct ata_host*,char*) ;
 int ahci_reset_controller (struct ata_host*) ;
 int ahci_save_initial_config (struct device*,struct ahci_host_priv*) ;
 int ata_dummy_port_ops ;
 struct ata_host* ata_host_alloc_pinfo (struct device*,struct ata_port_info const**,int ) ;
 int ata_port_desc (struct ata_port*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int devm_ioremap (struct device*,int ,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int dma_set_coherent_mask (struct device*,int ) ;
 int fls (int) ;
 int highbank_initialize_phys (struct device*,int ) ;
 int highbank_set_em_messages (struct device*,struct ahci_host_priv*,struct ata_port_info const*) ;
 int max (int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ahci_highbank_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ahci_host_priv *hpriv;
 struct ecx_plat_data *pdata;
 struct ata_host *host;
 struct resource *mem;
 int irq;
 int i;
 int rc;
 u32 n_ports;
 struct ata_port_info pi = ahci_highbank_port_info;
 const struct ata_port_info *ppi[] = { &pi, ((void*)0) };

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem) {
  dev_err(dev, "no mmio space\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  dev_err(dev, "no irq\n");
  return -EINVAL;
 }

 hpriv = devm_kzalloc(dev, sizeof(*hpriv), GFP_KERNEL);
 if (!hpriv) {
  dev_err(dev, "can't alloc ahci_host_priv\n");
  return -ENOMEM;
 }
 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata) {
  dev_err(dev, "can't alloc ecx_plat_data\n");
  return -ENOMEM;
 }

 hpriv->irq = irq;
 hpriv->flags |= (unsigned long)pi.private_data;

 hpriv->mmio = devm_ioremap(dev, mem->start, resource_size(mem));
 if (!hpriv->mmio) {
  dev_err(dev, "can't map %pR\n", mem);
  return -ENOMEM;
 }

 rc = highbank_initialize_phys(dev, hpriv->mmio);
 if (rc)
  return rc;


 ahci_save_initial_config(dev, hpriv);


 if (hpriv->cap & HOST_CAP_NCQ)
  pi.flags |= ATA_FLAG_NCQ;

 if (hpriv->cap & HOST_CAP_PMP)
  pi.flags |= ATA_FLAG_PMP;

 if (hpriv->cap & HOST_CAP_64)
  dma_set_coherent_mask(dev, DMA_BIT_MASK(64));






 n_ports = max(ahci_nr_ports(hpriv->cap), fls(hpriv->port_map));

 pdata->n_ports = n_ports;
 hpriv->plat_data = pdata;
 highbank_set_em_messages(dev, hpriv, &pi);

 host = ata_host_alloc_pinfo(dev, ppi, n_ports);
 if (!host) {
  rc = -ENOMEM;
  goto err0;
 }

 host->private_data = hpriv;

 if (!(hpriv->cap & HOST_CAP_SSS) || ahci_ignore_sss)
  host->flags |= ATA_HOST_PARALLEL_SCAN;

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  ata_port_desc(ap, "mmio %pR", mem);
  ata_port_desc(ap, "port 0x%x", 0x100 + ap->port_no * 0x80);


  if (ap->flags & ATA_FLAG_EM)
   ap->em_message_type = hpriv->em_msg_type;


  if (!(hpriv->port_map & (1 << i)))
   ap->ops = &ata_dummy_port_ops;
 }

 rc = ahci_reset_controller(host);
 if (rc)
  goto err0;

 ahci_init_controller(host);
 ahci_print_info(host, "platform");

 rc = ahci_host_activate(host, &ahci_highbank_platform_sht);
 if (rc)
  goto err0;

 return 0;
err0:
 return rc;
}
