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
typedef  int u32 ;
struct sata_rcar_priv {scalar_t__ base; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_2__ link; TYPE_1__* host; } ;
struct TYPE_3__ {struct sata_rcar_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ SCRSERR_REG ; 
 int SERR_COMM_WAKE ; 
 int SERR_DEV_XCHG ; 
 int SERR_PHYRDY_CHG ; 
 int /*<<< orphan*/  FUNC1 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_eh_info*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ata_port *ap)
{
	struct sata_rcar_priv *priv = ap->host->private_data;
	struct ata_eh_info *ehi = &ap->link.eh_info;
	int freeze = 0;
	u32 serror;

	serror = FUNC6(priv->base + SCRSERR_REG);
	if (!serror)
		return;

	FUNC0("SError @host_intr: 0x%x\n", serror);

	/* first, analyze and record host port events */
	FUNC1(ehi);

	if (serror & (SERR_DEV_XCHG | SERR_PHYRDY_CHG)) {
		/* Setup a soft-reset EH action */
		FUNC2(ehi);
		FUNC3(ehi, "%s", "hotplug");

		freeze = serror & SERR_COMM_WAKE ? 0 : 1;
	}

	/* freeze or abort */
	if (freeze)
		FUNC5(ap);
	else
		FUNC4(ap);
}