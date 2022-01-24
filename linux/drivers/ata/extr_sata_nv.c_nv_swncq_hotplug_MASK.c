#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ata_eh_info {int serror; } ;
struct TYPE_3__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_1__ link; } ;

/* Variables and functions */
 int NV_SWNCQ_IRQ_ADDED ; 
 int NV_SWNCQ_IRQ_REMOVED ; 
 int /*<<< orphan*/  SCR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_eh_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, u32 fis)
{
	u32 serror;
	struct ata_eh_info *ehi = &ap->link.eh_info;

	FUNC0(ehi);

	/* AHCI needs SError cleared; otherwise, it might lock up */
	FUNC4(&ap->link, SCR_ERROR, &serror);
	FUNC5(&ap->link, SCR_ERROR, serror);

	/* analyze @irq_stat */
	if (fis & NV_SWNCQ_IRQ_ADDED)
		FUNC2(ehi, "hot plug");
	else if (fis & NV_SWNCQ_IRQ_REMOVED)
		FUNC2(ehi, "hot unplug");

	FUNC1(ehi);

	/* okay, let's hand over to EH */
	ehi->serror |= serror;

	FUNC3(ap);
}