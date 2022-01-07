
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seattle_plat_data {int sgpio_ctrl; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ata_port_info {int dummy; } ;
struct ahci_host_priv {int em_buf_sz; struct seattle_plat_data* plat_data; int em_msg_type; scalar_t__ em_loc; } ;


 int EM_MSG_TYPE_LED ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 struct ata_port_info const ahci_port_info ;
 struct ata_port_info const ahci_port_seattle_info ;
 int dev_info (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,int ) ;
 struct seattle_plat_data* devm_kzalloc (struct device*,int,int ) ;
 int ioread32 (int ) ;
 int platform_get_resource (struct platform_device*,int ,int) ;

__attribute__((used)) static const struct ata_port_info *ahci_seattle_get_port_info(
  struct platform_device *pdev, struct ahci_host_priv *hpriv)
{
 struct device *dev = &pdev->dev;
 struct seattle_plat_data *plat_data;
 u32 val;

 plat_data = devm_kzalloc(dev, sizeof(*plat_data), GFP_KERNEL);
 if (!plat_data)
  return &ahci_port_info;

 plat_data->sgpio_ctrl = devm_ioremap_resource(dev,
         platform_get_resource(pdev, IORESOURCE_MEM, 1));
 if (IS_ERR(plat_data->sgpio_ctrl))
  return &ahci_port_info;

 val = ioread32(plat_data->sgpio_ctrl);

 if (!(val & 0xf))
  return &ahci_port_info;

 hpriv->em_loc = 0;
 hpriv->em_buf_sz = 4;
 hpriv->em_msg_type = EM_MSG_TYPE_LED;
 hpriv->plat_data = plat_data;

 dev_info(dev, "SGPIO LED control is enabled.\n");
 return &ahci_port_seattle_info;
}
