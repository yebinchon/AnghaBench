#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct solos_card {int nr_ports; TYPE_2__* dev; TYPE_4__** atmdev; int /*<<< orphan*/ * cli_queue; int /*<<< orphan*/ * tx_queue; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int vpi_bits; int vci_bits; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {void* phy_data; struct solos_card* dev_data; TYPE_1__ ci_range; int /*<<< orphan*/  number; TYPE_3__ class_dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_FOUND ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PKT_STATUS ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (char*,struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct solos_card*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_console ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fpga_ops ; 
 int /*<<< orphan*/  FUNC9 (struct solos_card*,int,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct pkt_hdr* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  solos_attr_group ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct solos_card *card, struct device *parent)
{
	int i;

	for (i = 0; i < card->nr_ports; i++) {
		struct sk_buff *skb;
		struct pkt_hdr *header;

		FUNC11(&card->tx_queue[i]);
		FUNC11(&card->cli_queue[i]);

		card->atmdev[i] = FUNC1("solos-pci", parent, &fpga_ops, -1, NULL);
		if (!card->atmdev[i]) {
			FUNC5(&card->dev->dev, "Could not register ATM device %d\n", i);
			FUNC3(card);
			return -ENODEV;
		}
		if (FUNC8(&card->atmdev[i]->class_dev, &dev_attr_console))
			FUNC5(&card->dev->dev, "Could not register console for ATM device %d\n", i);
		if (FUNC12(&card->atmdev[i]->class_dev.kobj, &solos_attr_group))
			FUNC5(&card->dev->dev, "Could not register parameter group for ATM device %d\n", i);

		FUNC6(&card->dev->dev, "Registered ATM device %d\n", card->atmdev[i]->number);

		card->atmdev[i]->ci_range.vpi_bits = 8;
		card->atmdev[i]->ci_range.vci_bits = 16;
		card->atmdev[i]->dev_data = card;
		card->atmdev[i]->phy_data = (void *)(unsigned long)i;
		FUNC2(card->atmdev[i], ATM_PHY_SIG_FOUND);

		skb = FUNC0(sizeof(*header), GFP_KERNEL);
		if (!skb) {
			FUNC7(&card->dev->dev, "Failed to allocate sk_buff in atm_init()\n");
			continue;
		}

		header = FUNC10(skb, sizeof(*header));

		header->size = FUNC4(0);
		header->vpi = FUNC4(0);
		header->vci = FUNC4(0);
		header->type = FUNC4(PKT_STATUS);

		FUNC9(card, i, skb, NULL);
	}
	return 0;
}