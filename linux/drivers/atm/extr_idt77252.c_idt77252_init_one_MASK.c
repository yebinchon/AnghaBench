#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int revision; int /*<<< orphan*/  dev; } ;
struct idt77252_dev {int revision; int index; int name; int sramsize; void* membase; struct idt77252_dev* next; int /*<<< orphan*/  link_pcr; int /*<<< orphan*/  vcibits; int /*<<< orphan*/  vpibits; void** fbq; struct atm_dev* atmdev; int /*<<< orphan*/  tst_timer; int /*<<< orphan*/  tst_lock; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tqueue; struct pci_dev* pcidev; } ;
struct TYPE_3__ {int /*<<< orphan*/  vci_bits; int /*<<< orphan*/  vpi_bits; } ;
struct atm_dev {TYPE_2__* phy; int /*<<< orphan*/  link_rate; TYPE_1__ ci_range; struct idt77252_dev* dev_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct atm_dev*) ;int /*<<< orphan*/  (* start ) (struct atm_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atm_dev* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct idt77252_dev* idt77252_chain ; 
 scalar_t__ FUNC5 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  idt77252_ops ; 
 scalar_t__ FUNC6 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  idt77252_softint ; 
 scalar_t__ FUNC7 (struct atm_dev*) ; 
 void* FUNC8 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct idt77252_dev*) ; 
 struct idt77252_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*) ; 
 unsigned long FUNC16 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,...) ; 
 int FUNC18 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tst_timer ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pcidev,
			     const struct pci_device_id *id)
{
	static struct idt77252_dev **last = &idt77252_chain;
	static int index = 0;

	unsigned long membase, srambase;
	struct idt77252_dev *card;
	struct atm_dev *dev;
	int i, err;


	if ((err = FUNC14(pcidev))) {
		FUNC17("idt77252: can't enable PCI device at %s\n", FUNC15(pcidev));
		return err;
	}

	if ((err = FUNC4(&pcidev->dev, FUNC0(32)))) {
		FUNC17("idt77252: can't enable DMA for PCI device at %s\n", FUNC15(pcidev));
		return err;
	}

	card = FUNC11(sizeof(struct idt77252_dev), GFP_KERNEL);
	if (!card) {
		FUNC17("idt77252-%d: can't allocate private data\n", index);
		err = -ENOMEM;
		goto err_out_disable_pdev;
	}
	card->revision = pcidev->revision;
	card->index = index;
	card->pcidev = pcidev;
	FUNC20(card->name, "idt77252-%d", card->index);

	FUNC1(&card->tqueue, idt77252_softint);

	membase = FUNC16(pcidev, 1);
	srambase = FUNC16(pcidev, 2);

	FUNC12(&card->mutex);
	FUNC19(&card->cmd_lock);
	FUNC19(&card->tst_lock);

	FUNC24(&card->tst_timer, tst_timer, 0);

	/* Do the I/O remapping... */
	card->membase = FUNC8(membase, 1024);
	if (!card->membase) {
		FUNC17("%s: can't ioremap() membase\n", card->name);
		err = -EIO;
		goto err_out_free_card;
	}

	if (FUNC6(card)) {
		FUNC17("%s: preset failed\n", card->name);
		err = -EIO;
		goto err_out_iounmap;
	}

	dev = FUNC2("idt77252", &pcidev->dev, &idt77252_ops, -1,
			       NULL);
	if (!dev) {
		FUNC17("%s: can't register atm device\n", card->name);
		err = -EIO;
		goto err_out_iounmap;
	}
	dev->dev_data = card;
	card->atmdev = dev;

#ifdef	CONFIG_ATM_IDT77252_USE_SUNI
	suni_init(dev);
	if (!dev->phy) {
		printk("%s: can't init SUNI\n", card->name);
		err = -EIO;
		goto err_out_deinit_card;
	}
#endif	/* CONFIG_ATM_IDT77252_USE_SUNI */

	card->sramsize = FUNC18(card);

	for (i = 0; i < 4; i++) {
		card->fbq[i] = FUNC8(srambase | 0x200000 | (i << 18), 4);
		if (!card->fbq[i]) {
			FUNC17("%s: can't ioremap() FBQ%d\n", card->name, i);
			err = -EIO;
			goto err_out_deinit_card;
		}
	}

	FUNC17("%s: ABR SAR (Rev %c): MEM %08lx SRAM %08lx [%u KB]\n",
	       card->name, ((card->revision > 1) && (card->revision < 25)) ?
	       'A' + card->revision - 1 : '?', membase, srambase,
	       card->sramsize / 1024);

	if (FUNC7(dev)) {
		FUNC17("%s: init_card failed\n", card->name);
		err = -EIO;
		goto err_out_deinit_card;
	}

	dev->ci_range.vpi_bits = card->vpibits;
	dev->ci_range.vci_bits = card->vcibits;
	dev->link_rate = card->link_pcr;

	if (dev->phy->start)
		dev->phy->start(dev);

	if (FUNC5(card)) {
		FUNC17("%s: dev_open failed\n", card->name);
		err = -EIO;
		goto err_out_stop;
	}

	*last = card;
	last = &card->next;
	index++;

	return 0;

err_out_stop:
	if (dev->phy->stop)
		dev->phy->stop(dev);

err_out_deinit_card:
	FUNC3(card);

err_out_iounmap:
	FUNC9(card->membase);

err_out_free_card:
	FUNC10(card);

err_out_disable_pdev:
	FUNC13(pcidev);
	return err;
}