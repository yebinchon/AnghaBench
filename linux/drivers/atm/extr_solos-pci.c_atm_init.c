
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct solos_card {int nr_ports; TYPE_2__* dev; TYPE_4__** atmdev; int * cli_queue; int * tx_queue; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int vpi_bits; int vci_bits; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_9__ {void* phy_data; struct solos_card* dev_data; TYPE_1__ ci_range; int number; TYPE_3__ class_dev; } ;
struct TYPE_7__ {int dev; } ;


 int ATM_PHY_SIG_FOUND ;
 int ENODEV ;
 int GFP_KERNEL ;
 int PKT_STATUS ;
 struct sk_buff* alloc_skb (int,int ) ;
 TYPE_4__* atm_dev_register (char*,struct device*,int *,int,int *) ;
 int atm_dev_signal_change (TYPE_4__*,int ) ;
 int atm_remove (struct solos_card*) ;
 void* cpu_to_le16 (int ) ;
 int dev_attr_console ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*) ;
 scalar_t__ device_create_file (TYPE_3__*,int *) ;
 int fpga_ops ;
 int fpga_queue (struct solos_card*,int,struct sk_buff*,int *) ;
 struct pkt_hdr* skb_put (struct sk_buff*,int) ;
 int skb_queue_head_init (int *) ;
 int solos_attr_group ;
 scalar_t__ sysfs_create_group (int *,int *) ;

__attribute__((used)) static int atm_init(struct solos_card *card, struct device *parent)
{
 int i;

 for (i = 0; i < card->nr_ports; i++) {
  struct sk_buff *skb;
  struct pkt_hdr *header;

  skb_queue_head_init(&card->tx_queue[i]);
  skb_queue_head_init(&card->cli_queue[i]);

  card->atmdev[i] = atm_dev_register("solos-pci", parent, &fpga_ops, -1, ((void*)0));
  if (!card->atmdev[i]) {
   dev_err(&card->dev->dev, "Could not register ATM device %d\n", i);
   atm_remove(card);
   return -ENODEV;
  }
  if (device_create_file(&card->atmdev[i]->class_dev, &dev_attr_console))
   dev_err(&card->dev->dev, "Could not register console for ATM device %d\n", i);
  if (sysfs_create_group(&card->atmdev[i]->class_dev.kobj, &solos_attr_group))
   dev_err(&card->dev->dev, "Could not register parameter group for ATM device %d\n", i);

  dev_info(&card->dev->dev, "Registered ATM device %d\n", card->atmdev[i]->number);

  card->atmdev[i]->ci_range.vpi_bits = 8;
  card->atmdev[i]->ci_range.vci_bits = 16;
  card->atmdev[i]->dev_data = card;
  card->atmdev[i]->phy_data = (void *)(unsigned long)i;
  atm_dev_signal_change(card->atmdev[i], ATM_PHY_SIG_FOUND);

  skb = alloc_skb(sizeof(*header), GFP_KERNEL);
  if (!skb) {
   dev_warn(&card->dev->dev, "Failed to allocate sk_buff in atm_init()\n");
   continue;
  }

  header = skb_put(skb, sizeof(*header));

  header->size = cpu_to_le16(0);
  header->vpi = cpu_to_le16(0);
  header->vci = cpu_to_le16(0);
  header->type = cpu_to_le16(PKT_STATUS);

  fpga_queue(card, i, skb, ((void*)0));
 }
 return 0;
}
