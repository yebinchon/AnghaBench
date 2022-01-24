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
struct stp_irq_parm {int dummy; } ;
struct ext_code {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQEXT_TLA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stp_irq_parm*) ; 

__attribute__((used)) static void FUNC2(struct ext_code ext_code,
				   unsigned int param32, unsigned long param64)
{
	FUNC0(IRQEXT_TLA);
	if (param32 & 0x00038000)
		FUNC1((struct stp_irq_parm *) &param32);
}