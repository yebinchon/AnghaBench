
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct ipmi_smi_powernv {scalar_t__ irq; struct ipmi_smi_powernv* opal_msg; int interface_id; int msg_lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IPMI_MAX_MSG_LENGTH ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct ipmi_smi_powernv*) ;
 int dev_warn (struct device*,char*,...) ;
 int devm_kfree (struct device*,struct ipmi_smi_powernv*) ;
 struct ipmi_smi_powernv* devm_kmalloc (struct device*,scalar_t__,int ) ;
 struct ipmi_smi_powernv* devm_kzalloc (struct device*,int,int ) ;
 int free_irq (scalar_t__,struct ipmi_smi_powernv*) ;
 int ipmi_opal_event ;
 int ipmi_powernv_smi_handlers ;
 int ipmi_register_smi (int *,struct ipmi_smi_powernv*,struct device*,int ) ;
 int irq_dispose_mapping (scalar_t__) ;
 scalar_t__ irq_of_parse_and_map (int ,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 scalar_t__ opal_event_request (int ) ;
 int request_irq (scalar_t__,int ,int ,char*,struct ipmi_smi_powernv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ipmi_powernv_probe(struct platform_device *pdev)
{
 struct ipmi_smi_powernv *ipmi;
 struct device *dev;
 u32 prop;
 int rc;

 if (!pdev || !pdev->dev.of_node)
  return -ENODEV;

 dev = &pdev->dev;

 ipmi = devm_kzalloc(dev, sizeof(*ipmi), GFP_KERNEL);
 if (!ipmi)
  return -ENOMEM;

 spin_lock_init(&ipmi->msg_lock);

 rc = of_property_read_u32(dev->of_node, "ibm,ipmi-interface-id",
   &prop);
 if (rc) {
  dev_warn(dev, "No interface ID property\n");
  goto err_free;
 }
 ipmi->interface_id = prop;

 rc = of_property_read_u32(dev->of_node, "interrupts", &prop);
 if (rc) {
  dev_warn(dev, "No interrupts property\n");
  goto err_free;
 }

 ipmi->irq = irq_of_parse_and_map(dev->of_node, 0);
 if (!ipmi->irq) {
  dev_info(dev, "Unable to map irq from device tree\n");
  ipmi->irq = opal_event_request(prop);
 }

 rc = request_irq(ipmi->irq, ipmi_opal_event, IRQ_TYPE_LEVEL_HIGH,
    "opal-ipmi", ipmi);
 if (rc) {
  dev_warn(dev, "Unable to request irq\n");
  goto err_dispose;
 }

 ipmi->opal_msg = devm_kmalloc(dev,
   sizeof(*ipmi->opal_msg) + IPMI_MAX_MSG_LENGTH,
   GFP_KERNEL);
 if (!ipmi->opal_msg) {
  rc = -ENOMEM;
  goto err_unregister;
 }

 rc = ipmi_register_smi(&ipmi_powernv_smi_handlers, ipmi, dev, 0);
 if (rc) {
  dev_warn(dev, "IPMI SMI registration failed (%d)\n", rc);
  goto err_free_msg;
 }

 dev_set_drvdata(dev, ipmi);
 return 0;

err_free_msg:
 devm_kfree(dev, ipmi->opal_msg);
err_unregister:
 free_irq(ipmi->irq, ipmi);
err_dispose:
 irq_dispose_mapping(ipmi->irq);
err_free:
 devm_kfree(dev, ipmi);
 return rc;
}
