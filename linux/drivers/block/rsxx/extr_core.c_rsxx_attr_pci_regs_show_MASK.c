#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct seq_file {struct rsxx_cardinfo* private; } ;
struct rsxx_cardinfo {scalar_t__ regmap; } ;

/* Variables and functions */
 scalar_t__ CREG_ADD ; 
 scalar_t__ CREG_CMD ; 
 scalar_t__ CREG_CNT ; 
 scalar_t__ CREG_DATA0 ; 
 scalar_t__ CREG_DATA1 ; 
 scalar_t__ CREG_DATA2 ; 
 scalar_t__ CREG_DATA3 ; 
 scalar_t__ CREG_DATA4 ; 
 scalar_t__ CREG_DATA5 ; 
 scalar_t__ CREG_DATA6 ; 
 scalar_t__ CREG_DATA7 ; 
 scalar_t__ CREG_STAT ; 
 scalar_t__ HWID ; 
 scalar_t__ HW_ERROR ; 
 scalar_t__ IER ; 
 scalar_t__ INTR_COAL ; 
 scalar_t__ IPR ; 
 scalar_t__ PCI_DEBUG0 ; 
 scalar_t__ PCI_DEBUG1 ; 
 scalar_t__ PCI_DEBUG2 ; 
 scalar_t__ PCI_DEBUG3 ; 
 scalar_t__ PCI_DEBUG4 ; 
 scalar_t__ PCI_DEBUG5 ; 
 scalar_t__ PCI_DEBUG6 ; 
 scalar_t__ PCI_DEBUG7 ; 
 scalar_t__ PCI_RECONFIG ; 
 scalar_t__ SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *p)
{
	struct rsxx_cardinfo *card = m->private;

	FUNC1(m, "HWID		0x%08x\n",
					FUNC0(card->regmap + HWID));
	FUNC1(m, "SCRATCH		0x%08x\n",
					FUNC0(card->regmap + SCRATCH));
	FUNC1(m, "IER		0x%08x\n",
					FUNC0(card->regmap + IER));
	FUNC1(m, "IPR		0x%08x\n",
					FUNC0(card->regmap + IPR));
	FUNC1(m, "CREG_CMD		0x%08x\n",
					FUNC0(card->regmap + CREG_CMD));
	FUNC1(m, "CREG_ADD		0x%08x\n",
					FUNC0(card->regmap + CREG_ADD));
	FUNC1(m, "CREG_CNT		0x%08x\n",
					FUNC0(card->regmap + CREG_CNT));
	FUNC1(m, "CREG_STAT	0x%08x\n",
					FUNC0(card->regmap + CREG_STAT));
	FUNC1(m, "CREG_DATA0	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA0));
	FUNC1(m, "CREG_DATA1	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA1));
	FUNC1(m, "CREG_DATA2	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA2));
	FUNC1(m, "CREG_DATA3	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA3));
	FUNC1(m, "CREG_DATA4	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA4));
	FUNC1(m, "CREG_DATA5	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA5));
	FUNC1(m, "CREG_DATA6	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA6));
	FUNC1(m, "CREG_DATA7	0x%08x\n",
					FUNC0(card->regmap + CREG_DATA7));
	FUNC1(m, "INTR_COAL	0x%08x\n",
					FUNC0(card->regmap + INTR_COAL));
	FUNC1(m, "HW_ERROR		0x%08x\n",
					FUNC0(card->regmap + HW_ERROR));
	FUNC1(m, "DEBUG0		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG0));
	FUNC1(m, "DEBUG1		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG1));
	FUNC1(m, "DEBUG2		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG2));
	FUNC1(m, "DEBUG3		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG3));
	FUNC1(m, "DEBUG4		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG4));
	FUNC1(m, "DEBUG5		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG5));
	FUNC1(m, "DEBUG6		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG6));
	FUNC1(m, "DEBUG7		0x%08x\n",
					FUNC0(card->regmap + PCI_DEBUG7));
	FUNC1(m, "RECONFIG		0x%08x\n",
					FUNC0(card->regmap + PCI_RECONFIG));

	return 0;
}