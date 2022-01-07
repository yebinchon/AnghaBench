
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt753x_sw_id {int (* init ) (struct gsw_mt753x*) ;int (* post_init ) (struct gsw_mt753x*) ;int model; int (* detect ) (struct gsw_mt753x*,struct chip_rev*) ;} ;
struct mt753x_mapping {int name; } ;
struct mii_bus {int dummy; } ;
struct gsw_mt753x {int global_vlan_enable; scalar_t__ irq; TYPE_1__* dev; int phy_status_poll; int irq_worker; int name; int model; int smi_addr; int mii_lock; struct mii_bus* host_bus; } ;
struct device_node {int dummy; } ;
struct chip_rev {int rev; int name; } ;


 int ARRAY_SIZE (struct mt753x_sw_id**) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MT753X_DFL_SMI_ADDR ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,int ,...) ;
 int dev_name (TYPE_1__*) ;
 int devm_kfree (TYPE_1__*,struct gsw_mt753x*) ;
 struct gsw_mt753x* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,scalar_t__,int ,int ,int ,struct gsw_mt753x*) ;
 int mt753x_add_gsw (struct gsw_mt753x*) ;
 int mt753x_apply_mapping (struct gsw_mt753x*,struct mt753x_mapping*) ;
 struct mt753x_mapping* mt753x_find_mapping (struct device_node*) ;
 scalar_t__ mt753x_hw_reset (struct gsw_mt753x*) ;
 int mt753x_irq_enable (struct gsw_mt753x*) ;
 int mt753x_irq_handler ;
 int mt753x_irq_worker ;
 int mt753x_load_port_cfg (struct gsw_mt753x*) ;
 struct mt753x_sw_id** mt753x_sw_ids ;
 int mt753x_swconfig_init (struct gsw_mt753x*) ;
 int mutex_init (int *) ;
 struct mii_bus* of_mdio_find_bus (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gsw_mt753x*) ;
 int stub1 (struct gsw_mt753x*,struct chip_rev*) ;
 int stub2 (struct gsw_mt753x*) ;
 int stub3 (struct gsw_mt753x*) ;

__attribute__((used)) static int mt753x_probe(struct platform_device *pdev)
{
 struct gsw_mt753x *gsw;
 struct mt753x_sw_id *sw;
 struct device_node *np = pdev->dev.of_node;
 struct device_node *mdio;
 struct mii_bus *mdio_bus;
 int ret = -EINVAL;
 struct chip_rev rev;
 struct mt753x_mapping *map;
 int i;

 mdio = of_parse_phandle(np, "mediatek,mdio", 0);
 if (!mdio)
  return -EINVAL;

 mdio_bus = of_mdio_find_bus(mdio);
 if (!mdio_bus)
  return -EPROBE_DEFER;

 gsw = devm_kzalloc(&pdev->dev, sizeof(struct gsw_mt753x), GFP_KERNEL);
 if (!gsw)
  return -ENOMEM;

 gsw->host_bus = mdio_bus;
 gsw->dev = &pdev->dev;
 mutex_init(&gsw->mii_lock);


 if (mt753x_hw_reset(gsw))
  goto fail;


 if (of_property_read_u32(np, "mediatek,smi-addr", &gsw->smi_addr))
  gsw->smi_addr = MT753X_DFL_SMI_ADDR;


 map = mt753x_find_mapping(np);
 if (map) {
  mt753x_apply_mapping(gsw, map);
  gsw->global_vlan_enable = 1;
  dev_info(gsw->dev, "LAN/WAN VLAN setting=%s\n", map->name);
 }


 mt753x_load_port_cfg(gsw);


 for (i = 0; i < ARRAY_SIZE(mt753x_sw_ids); i++) {
  if (!mt753x_sw_ids[i]->detect(gsw, &rev)) {
   sw = mt753x_sw_ids[i];

   gsw->name = rev.name;
   gsw->model = sw->model;

   dev_info(gsw->dev, "Switch is MediaTek %s rev %d",
     gsw->name, rev.rev);


   ret = sw->init(gsw);
   if (ret)
    goto fail;

   break;
  }
 }

 if (i >= ARRAY_SIZE(mt753x_sw_ids)) {
  dev_err(gsw->dev, "No mt753x switch found\n");
  goto fail;
 }

 gsw->irq = platform_get_irq(pdev, 0);
 if (gsw->irq >= 0) {
  ret = devm_request_irq(gsw->dev, gsw->irq, mt753x_irq_handler,
           0, dev_name(gsw->dev), gsw);
  if (ret) {
   dev_err(gsw->dev, "Failed to request irq %d\n",
    gsw->irq);
   goto fail;
  }

  INIT_WORK(&gsw->irq_worker, mt753x_irq_worker);
 }

 platform_set_drvdata(pdev, gsw);

 gsw->phy_status_poll = of_property_read_bool(gsw->dev->of_node,
           "mediatek,phy-poll");

 mt753x_add_gsw(gsw);

 mt753x_swconfig_init(gsw);

 if (sw->post_init)
  sw->post_init(gsw);

 if (gsw->irq >= 0)
  mt753x_irq_enable(gsw);

 return 0;

fail:
 devm_kfree(&pdev->dev, gsw);

 return ret;
}
