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
struct mbus_dram_window {int mbus_attr; int base; int size; } ;
struct mbus_dram_target_info {int num_cs; int mbus_dram_target_id; struct mbus_dram_window* cs; } ;
struct ahci_host_priv {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ahci_host_priv *hpriv,
				   const struct mbus_dram_target_info *dram)
{
	int i;

	for (i = 0; i < 4; i++) {
		FUNC3(0, hpriv->mmio + FUNC1(i));
		FUNC3(0, hpriv->mmio + FUNC0(i));
		FUNC3(0, hpriv->mmio + FUNC2(i));
	}

	for (i = 0; i < dram->num_cs; i++) {
		const struct mbus_dram_window *cs = dram->cs + i;

		FUNC3((cs->mbus_attr << 8) |
		       (dram->mbus_dram_target_id << 4) | 1,
		       hpriv->mmio + FUNC1(i));
		FUNC3(cs->base >> 16, hpriv->mmio + FUNC0(i));
		FUNC3(((cs->size - 1) & 0xffff0000),
		       hpriv->mmio + FUNC2(i));
	}
}