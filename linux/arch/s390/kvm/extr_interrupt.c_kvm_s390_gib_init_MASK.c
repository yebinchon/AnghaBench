#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_s390_gib {void* nisc; } ;
struct TYPE_6__ {int /*<<< orphan*/  aiv; } ;
struct TYPE_5__ {void* isc; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__ css_general_characteristics ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 struct kvm_s390_gib* gib ; 
 TYPE_1__ gib_alert_irq ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(u8 nisc)
{
	int rc = 0;

	if (!css_general_characteristics.aiv) {
		FUNC0(3, "%s", "gib not initialized, no AIV facility");
		goto out;
	}

	gib = (struct kvm_s390_gib *)FUNC3(GFP_KERNEL | GFP_DMA);
	if (!gib) {
		rc = -ENOMEM;
		goto out;
	}

	gib_alert_irq.isc = nisc;
	if (FUNC5(&gib_alert_irq)) {
		FUNC4("Registering the GIB alert interruption handler failed\n");
		rc = -EIO;
		goto out_free_gib;
	}

	gib->nisc = nisc;
	if (FUNC1((u32)(u64)gib)) {
		FUNC4("Associating the GIB with the AIV facility failed\n");
		FUNC2((unsigned long)gib);
		gib = NULL;
		rc = -EIO;
		goto out_unreg_gal;
	}

	FUNC0(3, "gib 0x%pK (nisc=%d) initialized", gib, gib->nisc);
	goto out;

out_unreg_gal:
	FUNC6(&gib_alert_irq);
out_free_gib:
	FUNC2((unsigned long)gib);
	gib = NULL;
out:
	return rc;
}