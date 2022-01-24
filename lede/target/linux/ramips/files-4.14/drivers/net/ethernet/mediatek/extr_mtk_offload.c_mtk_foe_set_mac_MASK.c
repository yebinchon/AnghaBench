#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {void* smac_lo; void* smac_hi; void* dmac_lo; void* dmac_hi; } ;
struct mtk_foe_entry {TYPE_1__ ipv4_hnapt; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mtk_foe_entry *entry, u8 *smac, u8 *dmac)
{
	entry->ipv4_hnapt.dmac_hi = FUNC1(*((u32*) dmac));
	entry->ipv4_hnapt.dmac_lo = FUNC0(*((u16*) &dmac[4]));
	entry->ipv4_hnapt.smac_hi = FUNC1(*((u32*) smac));
	entry->ipv4_hnapt.smac_lo = FUNC0(*((u16*) &smac[4]));
}