#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct zpci_dev {int /*<<< orphan*/  lock; TYPE_5__* fmb; int /*<<< orphan*/  fmb_update; } ;
struct seq_file {struct zpci_dev* private; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  consumed_work_units; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_bytes; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_rbytes; } ;
struct TYPE_10__ {int format; int fmt_ind; TYPE_4__ fmt3; TYPE_3__ fmt2; TYPE_2__ fmt1; TYPE_1__ fmt0; int /*<<< orphan*/  ld_ops; int /*<<< orphan*/  last_update; int /*<<< orphan*/  samples; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZPCI_FMB_DMA_COUNTER_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_common_names ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_fmt0_names ; 
 int /*<<< orphan*/  pci_fmt1_names ; 
 int /*<<< orphan*/  pci_fmt2_names ; 
 int /*<<< orphan*/  pci_fmt3_names ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, void *v)
{
	struct zpci_dev *zdev = m->private;

	if (!zdev)
		return 0;

	FUNC1(&zdev->lock);
	if (!zdev->fmb) {
		FUNC2(&zdev->lock);
		FUNC6(m, "FMB statistics disabled\n");
		return 0;
	}

	/* header */
	FUNC5(m, "Update interval: %u ms\n", zdev->fmb_update);
	FUNC5(m, "Samples: %u\n", zdev->fmb->samples);
	FUNC5(m, "Last update TOD: %Lx\n", zdev->fmb->last_update);

	FUNC3(m, pci_common_names, FUNC0(pci_common_names),
		     &zdev->fmb->ld_ops);

	switch (zdev->fmb->format) {
	case 0:
		if (!(zdev->fmb->fmt_ind & ZPCI_FMB_DMA_COUNTER_VALID))
			break;
		FUNC3(m, pci_fmt0_names, FUNC0(pci_fmt0_names),
			     &zdev->fmb->fmt0.dma_rbytes);
		break;
	case 1:
		FUNC3(m, pci_fmt1_names, FUNC0(pci_fmt1_names),
			     &zdev->fmb->fmt1.rx_bytes);
		break;
	case 2:
		FUNC3(m, pci_fmt2_names, FUNC0(pci_fmt2_names),
			     &zdev->fmb->fmt2.consumed_work_units);
		break;
	case 3:
		FUNC3(m, pci_fmt3_names, FUNC0(pci_fmt3_names),
			     &zdev->fmb->fmt3.tx_bytes);
		break;
	default:
		FUNC6(m, "Unknown format\n");
	}

	FUNC4(m);
	FUNC2(&zdev->lock);
	return 0;
}