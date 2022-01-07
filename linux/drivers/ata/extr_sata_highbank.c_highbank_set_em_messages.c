
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct ecx_plat_data {scalar_t__ post_clocks; scalar_t__ pre_clocks; int n_ports; int port_to_sgpio; struct gpio_desc** sgpio_gpiod; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct ata_port_info {int flags; } ;
struct ahci_host_priv {int em_buf_sz; int em_msg_type; scalar_t__ em_loc; struct ecx_plat_data* plat_data; } ;


 int ATA_FLAG_EM ;
 int ATA_FLAG_SW_ACTIVITY ;
 int EM_MSG_TYPE_LED ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int SGPIO_PINS ;
 int dev_err (struct device*,char*,int) ;
 struct gpio_desc* devm_gpiod_get_index (struct device*,char*,int,int ) ;
 int gpiod_set_consumer_name (struct gpio_desc*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int of_property_read_u32_array (struct device_node*,char*,int ,int ) ;

__attribute__((used)) static void highbank_set_em_messages(struct device *dev,
     struct ahci_host_priv *hpriv,
     struct ata_port_info *pi)
{
 struct device_node *np = dev->of_node;
 struct ecx_plat_data *pdata = hpriv->plat_data;
 int i;

 for (i = 0; i < SGPIO_PINS; i++) {
  struct gpio_desc *gpiod;

  gpiod = devm_gpiod_get_index(dev, "calxeda,sgpio", i,
          GPIOD_OUT_HIGH);
  if (IS_ERR(gpiod)) {
   dev_err(dev, "failed to get GPIO %d\n", i);
   continue;
  }
  gpiod_set_consumer_name(gpiod, "CX SGPIO");

  pdata->sgpio_gpiod[i] = gpiod;
 }
 of_property_read_u32_array(np, "calxeda,led-order",
      pdata->port_to_sgpio,
      pdata->n_ports);
 if (of_property_read_u32(np, "calxeda,pre-clocks", &pdata->pre_clocks))
  pdata->pre_clocks = 0;
 if (of_property_read_u32(np, "calxeda,post-clocks",
    &pdata->post_clocks))
  pdata->post_clocks = 0;


 hpriv->em_loc = 0;
 hpriv->em_buf_sz = 4;
 hpriv->em_msg_type = EM_MSG_TYPE_LED;
 pi->flags |= ATA_FLAG_EM | ATA_FLAG_SW_ACTIVITY;
}
